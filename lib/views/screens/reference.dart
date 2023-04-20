import 'package:flutter/material.dart';

import '../../utils/backbutton.dart';
import '../../utils/textstyle.dart';

class reference extends StatefulWidget {
  const reference({Key? key}) : super(key: key);

  @override
  State<reference> createState() => _referenceState();
}

class _referenceState extends State<reference> {

  String refename = "";
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Reference",
          style: titletextstyle,
        ),
        backgroundColor: Colors.orangeAccent,
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
                      "Reference name",
                      style: educationtitle,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  const EdgeInsets.only(top: 10, right: 18),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Om Trivedi",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              border: const OutlineInputBorder(),
                            ),
                            onSaved: (val) {
                              refename = val!;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Designation",
                            style: educationtitle),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 18),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "IT H.O.D , ID - 2295",
                                  hintStyle:
                                  TextStyle(color: Colors.grey.shade400),
                                  border: const OutlineInputBorder(),
                                ),
                                onSaved: (val) {
                                  // school = val!;
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Organization / Instute",
                            style: educationtitle ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 18,bottom: 20),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Tencent Games Pvt. limited",
                                  hintStyle:
                                  TextStyle(color: Colors.grey.shade400),
                                  border: const OutlineInputBorder(),
                                ),
                                onSaved: (val) {
                                  // perc = val!;
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
