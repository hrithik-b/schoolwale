import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:schoolwale/pages/homepage.dart';
import 'package:schoolwale/pages/phone.dart';
import 'package:schoolwale/pages/user_not_found.dart';

import '../Models/student_class.dart';
import '../constants/constant_fields.dart';

// import 'homepage.dart';
class MyOtp extends StatefulWidget {
  final phone;
  const MyOtp({Key? key, required this.phone}) : super(key: key);

  @override
  State<MyOtp> createState() => _MyOtpState(phone);
}

class _MyOtpState extends State<MyOtp> {
  final phone;
  final FirebaseAuth auth = FirebaseAuth.instance;

  _MyOtpState(this.phone);

  @override
  Widget build(BuildContext context) {
    print(phone);
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code = "";
    Widget nextPage = UserNotFound();
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/schoolwale-logo.jpeg'),
                width: 250,
                height: 250,
              ),
              SizedBox(
                height: 0,
              ),
              Text(
                'Phone Verification',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We need to register your phone before getting started',
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Pinput(
                length: 6,
                showCursor: true,
                onChanged: (value) {
                  code = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: 300,
                child: ElevatedButton(
                  onPressed: () async {
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                            verificationId: MyPhone.verify, smsCode: code);

                    // Sign the user in (or link) with the credential
                    await auth
                        .signInWithCredential(credential)
                        .then((value) => nextPage = VerifyUserPhone(
                              userdata: value,
                              numberToVerify: 6238697724,
                            ));

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => nextPage));
                  },
                  child: Text('Verify Phone Number'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0660C6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class VerifyUserPhone extends StatelessWidget {
  final UserCredential userdata;
  final int numberToVerify;
  const VerifyUserPhone(
      {Key? key, required this.userdata, required this.numberToVerify})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Students").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasError ||
              snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }
          bool isUser = false;
          Map<int, int> phoneNumbers = new Map();
          final documents = snapshot.data!.docs.map((e) {
            return e.data();
          });

          print(documents);
          final student_info;
          for (var val in documents) {
            //print(val);
            final object = StudentInfo.fromJson(val);
            phoneNumbers[object.registeredNumbers] = object.registerNumber;
          }
          print(phoneNumbers);

          phoneNumbers.forEach((key, value) {
            if (key == numberToVerify) {
              currentUser = value;
              isUser = true;
              return;
            }
          });
          if (isUser) {
            return MyHomePage();
          }

          return UserNotFound();
        },
      ),
    );
  }
}
