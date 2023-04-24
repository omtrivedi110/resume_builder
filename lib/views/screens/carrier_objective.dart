import 'package:flutter/material.dart';
import 'package:resume_builder/utils/backbutton.dart';
import 'package:resume_builder/utils/textstyle.dart';

class carrier_objective extends StatefulWidget {
  const carrier_objective({Key? key}) : super(key: key);

  @override
  State<carrier_objective> createState() => _carrier_objectiveState();
}

class _carrier_objectiveState extends State<carrier_objective> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // title: Text(
        //   "Carrier Objective",
        //   style: titletextstyle,
        // ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Mybackicon(),
      ),
      body: Column(
        children: [
          Container(
            height: s.height * 0.12,
            width: s.width,
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Text(
              "Carrier Objectives",
              style: titletextstyle,
            ),
          ),
        ],
      ),
    );
  }
}
