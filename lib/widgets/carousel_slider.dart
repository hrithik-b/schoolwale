
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({Key? key});

  Future<List<String>> getImageUrls() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseFirestore.instance.collection("Event").get();

    List<String> imageUrls = querySnapshot.docs
        .map((eventDoc) => eventDoc.get("imageUrl")) // Adjust field name
        .cast<String>()
        .toList();

    return imageUrls;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: getImageUrls(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error loading images'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No images available'));
        } else {
          // Take only the first two images from the list
          List<String> firstTwoImageUrls = snapshot.data!.take(2).toList();

          return Container(
            padding: EdgeInsets.only(top: 20),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 250,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
              items: firstTwoImageUrls.map((imageUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          );
        }
      },
    );
  }
}


// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//  import 'package:flutter/material.dart';
 
// class CustomCarouselSlider extends StatelessWidget {
//   const CustomCarouselSlider({Key? key});

//   Future<List<String>> getImageUrls() async {
//     List<String> imageUrls = [];
    
//     // Replace 'your_folder_path' with the actual path to your images in Firebase Storage
//     final storageReference = FirebaseFirestore.instance.collection("Event").get(),
//     ListResult result = await storageReference.listAll();
    
//     for (var item in result.items) {
//       String downloadUrl = await item.getDownloadURL();
//       imageUrls.add(downloadUrl);
//     }
    
//     return imageUrls;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<String>>(
//       future: getImageUrls(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return CircularProgressIndicator(); // Loading indicator while fetching images
//         } else if (snapshot.hasError) {
//           return Text('Error loading images');
//         } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//           return Text('No images available');
//         } else {
//           return Container(
//             padding: EdgeInsets.only(top: 20),
//             child: CarouselSlider(
//               // ... your CarouselSlider options here ...
//               items: snapshot.data!.map((imageUrl) {
//                 return Builder(
//                   builder: (BuildContext context) {
//                     return ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.network(
//                         imageUrl,
//                         fit: BoxFit.cover,
//                       ),
//                     );
//                   },
//                 );
//               }).toList(),
//             ),
//           );
//         }
//       },
//     );
//   }
// }
