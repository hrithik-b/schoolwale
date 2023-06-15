
import 'package:flutter/material.dart';

class CarouselItems extends StatelessWidget {
  final String carouselImageUrl;

  const CarouselItems({Key? key, required this.carouselImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 7), // changes the position of the shadow
          ),
        ],
        image: DecorationImage(
          image: NetworkImage(carouselImageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
