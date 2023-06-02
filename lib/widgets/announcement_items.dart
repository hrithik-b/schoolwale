import 'package:flutter/material.dart';

class annoucementsUpdate extends StatelessWidget {
  final IconData icon;
  final String Annoucementname;
  final String Annocementsdate;
  final String AnnocementsUpdateddate;
  const annoucementsUpdate({Key? key, required this.icon, required this.Annoucementname, required this.Annocementsdate, required this.AnnocementsUpdateddate, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Card(
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
              Icon(
                icon,
                color: Colors.blue,
              ),
              Text(
              Annoucementname,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                Annocementsdate,
                textAlign: TextAlign.left,
              ),
              Text(
                AnnocementsUpdateddate,
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),

    );
  }
}
