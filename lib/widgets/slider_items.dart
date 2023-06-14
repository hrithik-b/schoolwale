
import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  final String heading;
  final String imageUrl;
  final String infoText;
  final Color containerColor;

  const SliderItem({
    Key? key,
    required this.heading,
    required this.imageUrl,
    required this.infoText,
    required this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, right: 15),
      child: Stack(
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          Row(
            children: [
              Container(
                width: 110,
                height: 60,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 15),
                  child: Text(
                    heading,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 66, left: 35),
            child: Text(
              infoText,
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
