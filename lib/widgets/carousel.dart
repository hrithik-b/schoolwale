// child: CarouselSlider(
//         options: CarouselOptions(
//         height: 400,
//         aspectRatio: 16/9,
//         viewportFraction: 0.8,
//         initialPage: 0,
//         enableInfiniteScroll: true,
//         reverse: false,
//         autoPlay: true,
//         autoPlayInterval: const Duration(seconds: 3),
//         autoPlayAnimationDuration: const Duration(milliseconds: 800),
//         autoPlayCurve: Curves.fastOutSlowIn,
//         enlargeCenterPage: true,
//         enlargeFactor: 0.3,
//         scrollDirection: Axis.horizontal,
//          ),
//         items: [
//           'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
//           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjZijn6WeGyWgc9LL-9NUHgVzDGB-gdA6qSFN5mklFdA6qNHHujO1ef_MGhpIso-K666Y&usqp=CAU'
//         ].map((imageUrl) {
//           return Builder(
//         builder: (BuildContext context) {
//           return Image.network(imageUrl, fit: BoxFit.cover,);
//         },
//           );
//         }).toList(),
//       ),