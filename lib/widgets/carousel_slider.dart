import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    

    return  Container(
      
      padding: EdgeInsets.only(top: 20),
      child:CarouselSlider(
        options: CarouselOptions(
        height: 250,
        aspectRatio: 16/9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
         ),
        items: [
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjmGR6Cf_43lCZkLAxRSVKXrbtgUYlYAies0DnXsX3g-_VQlDeVelY_gqXyuwvQyBwdnc&usqp=CAU',
         'https://cdndailyexcelsior.b-cdn.net/wp-content/uploads/2018/11/page10-12.jpg'
          // 'https://cdndailyexcelsior.b-cdn.net/wp-content/uploads/2019/12/page12-7-2.jpg',
        //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1y2sptJ5DQdecXeVc86Xrvv_WrbtbHTFk1A&usqp=CAU'
        ].map((imageUrl) {
          return Builder(
        builder: (BuildContext context) {
          return Image.network(imageUrl, fit: BoxFit.cover,);
        },
          );
        }).toList(),
      ),
    );

    
    
  }
}