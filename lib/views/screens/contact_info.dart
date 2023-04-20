import 'package:flutter/material.dart';

import '../../utils/backbutton.dart';
import '../../utils/icons_utils.dart';
import '../../utils/textstyle.dart';

class contact_info extends StatefulWidget {
  const contact_info({Key? key}) : super(key: key);

  @override
  State<contact_info> createState() => _contact_infoState();
}

class _contact_infoState extends State<contact_info> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  int index = 0;
  GlobalKey namekey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Contact Info",
          style: titletextstyle,
        ),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: s.height * 0.12,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                    ),
                    child: Text(
                      "Contact Detail",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Container(
                    height: s.height * 0.12,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                    ),
                    child: Text(
                      "Profile Photo",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          IndexedStack(
            index: index,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  // height: 5,
                  width: s.width,
                  color: Colors.white,
                  child: Form(
                    key: formkey,
                    child: Column(
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        // Text("hello")
                        Row(
                          children: [
                            Image.asset(
                              "${icons}user.png",
                              height: 20,
                            ),
                            TextFormField(
                              // key: formkey,
                              key: namekey,
                              decoration: const InputDecoration(
                                  hintText: "Enter Name",
                                  border: UnderlineInputBorder()),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}
