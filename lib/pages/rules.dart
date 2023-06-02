import 'package:flutter/material.dart';
import 'homepage.dart';
class Myrules extends StatefulWidget {
  @override
  _myrules createState() => _myrules();
}

class _myrules extends State<Myrules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0660C6),
        leading: IconButton(onPressed : () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const MyHomePage()),
  )},icon: Icon(Icons.arrow_back_ios),),
        title: Text(
          "Rules And Regulations",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
      
        child: Center(
          
          child: Container(
            alignment: Alignment.center,
            width: 350,
            height: 711,
            decoration: BoxDecoration(
              color: Color.fromRGBO(221, 215, 245, 0.302),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "All the students must follow below rules.So kindly read the instructions carefully",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 3,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                              "1. All students are expected to greet their school teachers when they meet them whether they actually teach them or not",
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                                letterSpacing: 1,
                              )),
                          SizedBox(height: 4),
                          Text(
                              "2. No books (other than text books or library books), magazines Cds, Pen Drive etc should be brought to school. If they are brought, they will be confiscated.",
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                                letterSpacing: 1,
                              )),
                          SizedBox(height: 4),
                          Text(
                              "3. Students are expected to respect school property. No student should damage any school furniture, write or draw anything on the walls irregular or in any way damage things belonging to others. Any school property damaged even by accident should be reported at once to the class teacher or to the Principal.",
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                                letterSpacing: 1,
                              )),
                          SizedBox(height: 4),
                          Text(
                              "4. A student must always come to school in uniform, even during the Practical and special classes.",
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                                letterSpacing: 1,
                              )),
                          SizedBox(height: 4),
                          Text(
                              "5. Chewing chocolates and gum in the school premises is strictly forbidden.",
                              style: TextStyle(
                                fontSize: 18,
                                wordSpacing: 3,
                                letterSpacing: 1,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
