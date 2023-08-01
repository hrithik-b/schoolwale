import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class annoucementsUpdate extends StatelessWidget {
  // final IconData icon;
  final String Annoucementname;
  final Annocementsdate;
  final String AnnocementsUpdateddate;
<<<<<<< HEAD
  final String AnnouncementDescription;
  const annoucementsUpdate(
      {Key? key,
      required this.Annoucementname,
      required this.Annocementsdate,
      required this.AnnocementsUpdateddate,
      required this.AnnouncementDescription})
      : super(key: key);
=======
  const annoucementsUpdate({
    Key? key,
    required this.Annoucementname,
    required this.Annocementsdate,
    required this.AnnocementsUpdateddate,
  }) : super(key: key);
>>>>>>> 09a67c5f54dc09d623658857e6a92d01dd7c7e83

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
<<<<<<< HEAD
          height: 300,
=======
          height: 150,
>>>>>>> 09a67c5f54dc09d623658857e6a92d01dd7c7e83
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
<<<<<<< HEAD
                AnnouncementDescription,
                //textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                DateFormat.yMd()
                        .add_jm()
                        .format((Annocementsdate as Timestamp).toDate()) ??'',
=======
                "On: $Annocementsdate",
>>>>>>> 09a67c5f54dc09d623658857e6a92d01dd7c7e83
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
