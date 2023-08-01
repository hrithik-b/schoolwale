import 'package:flutter/material.dart';

class AboutContainer extends StatelessWidget {
  final String heading;
  final String content;
  final String header;
  final String imageUrl;
  final String missionhead;
  final String missioncontent;

  const AboutContainer({
    Key? key,
    required this.heading,
    required this.content,
    required this.header,
    required this.imageUrl,
    required this.missioncontent,
    required this.missionhead,
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
            header,
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
              Text(
                heading,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                content,
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
              Text(
                missionhead,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                missioncontent,
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
