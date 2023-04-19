import 'package:flutter/material.dart';

import '../../utils/textstyle.dart';

class education extends StatefulWidget {
  const education({Key? key}) : super(key: key);

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Education",
          style: titletextstyle,
        ),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Container(
            child: Column(
              children: [
                Text("Course And Degree",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),,),
                TextFormField(
                  key: ,
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            color: Colors.orangeAccent,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
