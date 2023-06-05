import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'homepage.dart';
class MyOtp extends StatefulWidget {
  const MyOtp({Key? key}) : super(key: key);

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
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

    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar:true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,color: Colors.black,
          ),
        ),
      ),
      body:Container(
        margin: EdgeInsets.only(left: 25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image:AssetImage('assets/images/schoolwale-logo.jpeg') ,width: 250,height: 250,),
              SizedBox(
                height: 0,
              ),
              Text('Phone Verification',style: TextStyle(
                  fontSize: 22,fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: 10,
              ),
              Text('We need to register your phone before getting started',style: TextStyle(
                fontSize: 16,
              ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),

        Pinput(
          showCursor: true,

        ),


        
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width:300,
                child: ElevatedButton(onPressed : () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyHomePage())),
  }, child: Text('Verify Phone Number'),style: ElevatedButton.styleFrom(
                    primary: Color(0xff0660C6),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                ),) ,
              )

            ],
          ),
        ),
      ),
    );
  }
}
