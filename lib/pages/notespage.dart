import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class NotesPage extends StatelessWidget {
  final notesData;
  final String subjectName;

  const NotesPage({Key? key, required this.notesData, required this.subjectName})
      : super(key: key);

  Future<void> launchURL(String link) async {
    final Uri url = Uri.parse(link);
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw Exception('Could not launch $link');
    }
  }

  static Future<File> _storeFile(String url, List<int> bytes) async {
    final filename = basename(url).split('?').first;
    final dir = await getExternalStorageDirectory();

    final file = File('${dir?.absolute.path}/$filename');
    file.writeAsBytes(bytes, flush: true);
    return file;
  }

  static Future<File> loadNetwork(String url) async {
    final response = await http.get(Uri.parse(url));
    final bytes = response.bodyBytes;

    return _storeFile(url, bytes);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    int count = notesData.length;
    var keys = notesData.keys.toList();
    var values = notesData.values.toList();
    for (int i = 0; i < count; i++) {
      items.add(
        Card(
          margin: EdgeInsets.only(top: 15),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  keys[i],
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.picture_as_pdf),
                ElevatedButton(
                  onPressed: () async {
                    final file = await loadNetwork(values[i]);
                    try {
                      var status = await Permission.manageExternalStorage.status;

                      if (status.isDenied) {
                        status = await Permission.manageExternalStorage.request();
                        return;
                      }

                      if (status.isPermanentlyDenied) {
                        openAppSettings();
                        return;
                      }

                      await OpenFile.open(file.path);
                    } catch (error) {
                      print(error);
                    }
                  },
                  child: Text('View '),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0066C6),
        title: Text('$subjectName Notes'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: items,
          ),
        ),
      ),
    );
  }
}
