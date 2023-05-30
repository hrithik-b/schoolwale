import 'package:flutter/material.dart';
class CarouselItems extends StatelessWidget {
  final String carouselImageUrl;
  const CarouselItems({super.key, required this.carouselImageUrl});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image:  DecorationImage(
                      image: NetworkImage(carouselImageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
    );
  }
}