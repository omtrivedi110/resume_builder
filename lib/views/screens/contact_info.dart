import 'package:flutter/material.dart';

import '../../utils/backbutton.dart';
import '../../utils/textstyle.dart';

class contact_info extends StatefulWidget {
  const contact_info({Key? key}) : super(key: key);

  @override
  State<contact_info> createState() => _contact_infoState();
}

class _contact_infoState extends State<contact_info> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
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
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      decoration: const BoxDecoration(
                        color: Colors.orangeAccent,
                        border: Border(
                          bottom: BorderSide(),
                        ),
                      ),
                      height: s.height * 0.10,
                      child: const Text("Contact Details",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
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
                      alignment: Alignment.center,
                      color: Colors.orangeAccent,
                      height: s.height * 0.10,
                      child: const Text("Profile Photo",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ),
              ],
            ),
            IndexedStack(
              index: index,
              children: [
                Text("this is Contact"),
                Text("this is photo"),
              ],
            ),
          ],
        ));
  }
}
