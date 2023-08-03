import 'package:flutter/material.dart';

class AboutContainer extends StatelessWidget {
  final String Schoolname;
  final String imageUrl;
  final String mission;
  final String description;

  const AboutContainer({
    Key? key,
    required this.Schoolname,
    required this.imageUrl,
    required this.description,
    required this.mission,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Check if the header is provided
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.center,
          child: Text(
            Schoolname,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // Check if the image URL is provided
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(218, 201, 201, 1),
                blurRadius: 6.0,
                spreadRadius: 6.0,
                offset: Offset(0.0, 0.0),
              ),
            ],
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/schoolPicture.jpg'),
            radius: 120,
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(218, 201, 201, 1),
                blurRadius: 6.0,
                spreadRadius: 6.0,
                offset: Offset(0.0, 0.0),
              ),
            ],
            color: Color.fromRGBO(221, 215, 245, 0.302),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: 18,
                  wordSpacing: 3,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(218, 201, 201, 1),
                blurRadius: 6.0,
                spreadRadius: 6.0,
                offset: Offset(0.0, 0.0),
              ),
            ],
            color: Color.fromRGBO(221, 215, 245, 0.302),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 8),
              Text(
                mission,
                style: TextStyle(
                  fontSize: 18,
                  wordSpacing: 3,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
