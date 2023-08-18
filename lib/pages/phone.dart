// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'otp.dart';
//
// class MyPhone extends StatefulWidget {
//   const MyPhone({Key? key}) : super(key: key);
//
//   static String verify = "";
//
//   @override
//   State<MyPhone> createState() => _MyPhoneState();
// }
//
// class _MyPhoneState extends State<MyPhone> {
//   TextEditingController countrycode = TextEditingController();
//   var phone = "";
//   @override
//   void initState() {
//     // TODO: implement initState
//     countrycode.text = "+91";
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final auth = FirebaseAuth.instance;
//
//     return Scaffold(
//       // backgroundColor: Color(0xff0660C6),
//       body: Container(
//         margin: EdgeInsets.only(left: 25, right: 25),
//         alignment: Alignment.center,
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               /* Stack(
//               children:<Widget>[Text('SCHOOLWALE',style: TextStyle(
//                   fontSize: 40,foreground: Paint()..style=PaintingStyle.stroke
//                   ..strokeWidth=6
//                   ..color=Color.fromARGB(255, 242, 243, 244)!,
//               ),),
//              Text('SCHOOLWALE',style: TextStyle(fontSize: 40,color: Colors.white),
//               ),],),*/
//               const Image(
//                 image: AssetImage('assets/images/schoolwale-logo.jpeg'),
//                 width: 250,
//                 height: 250,
//               ),
//               SizedBox(
//                 height: 0,
//               ),
//               Text(
//                 'Phone Verification',
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 'We need to register your phone before getting started',
//                 style: TextStyle(
//                   fontSize: 16,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               Container(
//                 height: 55,
//                 decoration: BoxDecoration(
//                     border: Border.all(width: 1, color: Colors.grey),
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Row(
//                   children: [
//                     SizedBox(
//                       width: 10,
//                     ),
//                     SizedBox(
//                       width: 40,
//                       child: TextField(
//                         controller: countrycode,
//                         decoration: InputDecoration(border: InputBorder.none),
//                       ),
//                     ),
//                     Text(
//                       "|",
//                       style: TextStyle(fontSize: 33, color: Colors.grey),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Expanded(
//                       child: TextField(
//                         keyboardType: TextInputType.phone,
//                         onChanged: (value) {
//                           phone = value;
//                         },
//                         decoration: InputDecoration(
//                             border: InputBorder.none, hintText: "Phone"),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               SizedBox(
//                 height: 45,
//                 width: 300,
//                 child: ElevatedButton(
//                   onPressed: () async {
//                     await auth.verifyPhoneNumber(
//                       phoneNumber: '+91 $phone',
//                       verificationCompleted:
//                           (PhoneAuthCredential credential) async {
//                         // ANDROID ONLY!
//
//                         // Sign the user in (or link) with the auto-generated credential
//                         await auth.signInWithCredential(credential);
//                       },
//                       verificationFailed: (FirebaseAuthException e) {
//                         if (e.code == 'invalid-phone-number') {
//                           print('The provided phone number is not valid.');
//                         }
//
//                         // Handle other errors
//                       },
//                       codeSent: (String verificationId, int? resendToken) {
//                         MyPhone.verify = verificationId;
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => MyOtp(phone: phone)));
//                       },
//                       timeout: const Duration(seconds: 60),
//                       codeAutoRetrievalTimeout: (String verificationId) {},
//                     );
//                   },
//                   child: Text('Send the Code'),
//                   style: ElevatedButton.styleFrom(
//                       primary: Color(0xff0660C6),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10))),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'otp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({Key? key}) : super(key: key);

  static String verify = "";

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countrycode = TextEditingController();
  var phone = "";

  @override
  void initState() {
    countrycode.text = "+91";
    super.initState();
  }

  // Future<bool> checkPhoneNumber(String phoneNumber) async {
  //   print(phoneNumber.runtimeType);
  //   final studentRef = FirebaseFirestore.instance.collection('Students');
  //   final snapshot = await studentRef.where('Registered_number', isEqualTo: int.parse(phoneNumber)).get();
  //   return snapshot.docs.isNotEmpty;
  // }

  @override
  Widget build(BuildContext context) {
    final auth = FirebaseAuth.instance;

    return Scaffold(
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
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
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
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    Text(
                      "|",
                      style: TextStyle(fontSize: 33, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          phone = value;
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Phone"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: 300,
                child: ElevatedButton(
                  onPressed: () async {
                    await auth.verifyPhoneNumber(
                      phoneNumber: '+91 $phone',
                      verificationCompleted: (PhoneAuthCredential credential) async {
                        await auth.signInWithCredential(credential);
                      },
                      verificationFailed: (FirebaseAuthException e) {
                        if (e.code == 'invalid-phone-number') {
                          print('The provided phone number is not valid.');
                        }
                        // Handle other errors
                      },
                      codeSent: (String verificationId, int? resendToken) {
                        MyPhone.verify = verificationId;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyOtp(phone: phone)),
                        );
                      },
                      timeout: const Duration(seconds: 60),
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  },
                  child: Text('Send the Code'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff0660C6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
