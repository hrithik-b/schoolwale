import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class annoucementsUpdate extends StatelessWidget {
  // final IconData icon;
  final String Annoucementname;
  final Annocementsdate;
  final String AnnocementsUpdateddate;
  const annoucementsUpdate({
    Key? key,
    required this.Annoucementname,
    required this.Annocementsdate,
    required this.AnnocementsUpdateddate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.lightBlue[50],
        child: Container(
          height: 150,
          width: 200,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   icon,
              //   color: Color.fromARGB(255, 0, 101, 184),
              // ),
              Text(
                Annoucementname,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
               'On'+DateFormat.yMd().add_jm().format((Annocementsdate as Timestamp).toDate()) ?? '',
                textAlign: TextAlign.left,
              ),
              Text(
                "Posted on: $AnnocementsUpdateddate",
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
