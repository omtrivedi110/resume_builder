import 'package:flutter/material.dart';

import '../../utils/backbutton.dart';
import '../../utils/textstyle.dart';

class education extends StatefulWidget {
  const education({Key? key}) : super(key: key);

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  GlobalKey<FormState> formkey = GlobalKey();
  String course = "";
  String school = "";
  String perc = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Education",
          style: titletextstyle,
        ),
        backgroundColor: Colors.black45,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(left: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Course And Degree",
                      style: educationtitle,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 18),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "B . Tech Information technology",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              border: const OutlineInputBorder(),
                            ),
                            onSaved: (val) {
                              course = val!;
                              print(course);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("School/college/institute", style: educationtitle),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 18),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Bhagawan Mahavir University",
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade400),
                                  border: const OutlineInputBorder(),
                                ),
                                onSaved: (val) {
                                  school = val!;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Perc / CGPI", style: educationtitle),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 18),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "70 % OR 7.0 CGPI",
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade400),
                                  border: const OutlineInputBorder(),
                                ),
                                onSaved: (val) {
                                  perc = val!;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Year of Pass", style: educationtitle),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 18, bottom: 20),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "2019",
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade400),
                                  border: const OutlineInputBorder(),
                                ),
                                onSaved: (val) {
                                  perc = val!;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
