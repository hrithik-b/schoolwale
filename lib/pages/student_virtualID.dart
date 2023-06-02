import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Virtual Id card',
      home: Virtualid(),
    );
  }
}

class Virtualid extends StatefulWidget {
  @override
  _Virtualid createState() => _Virtualid();
}

class _Virtualid extends State<Virtualid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Define the action to be performed when the arrow icon is pressed
            // For example, you can navigate to the previous screen
            Navigator.pop(context);
          },
        ),
        title: Text('Virtual Id Card'),
        centerTitle: true,

      ),
      body: ListView(
        children: [
      Card(
      child: Column(
      children: [
        Container(
        width:350,
        height:550,
        child: Image.network(
            'https://5.imimg.com/data5/SELLER/Default/2020/12/NS/OM/XG/3502351/school-id-card-500x500.jpg',
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          'Virtual ID Card',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      ],
    ),
    ),
        ],
      ),
    );
  }
}

