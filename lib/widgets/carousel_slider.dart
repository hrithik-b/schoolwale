import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    

    return  Container(
      padding: EdgeInsets.only(top: 20),
      child: CarouselSlider(
              
              options: CarouselOptions(
              height: 200,
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
                'https://i.ytimg.com/vi/cILmM5ti-uA/maxresdefault.jpg',
                'https://www.scadworldschool.com/cs-content/uploads/gallery/2017/sports-day-events-2017/sports-day-activity(3).JPG',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyW6ZphNlgiAU6V310WkwF1MM_GJ8cEr3jAQ&usqp=CAU',
                'https://www.apeejay.edu/faridabad/images/activities/2018/group-dance/image-2.jpg'
              ].map((imageUrl) {
                return Builder(
              builder: (BuildContext context) {
                return Image.network(imageUrl, fit: BoxFit.cover);
              },
                );
              }).toList()
      ),
    );

    
    
  }
}