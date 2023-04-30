import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:resume_builder/utils/backbutton.dart';

import '../../utils/textstyle.dart';

class experience extends StatefulWidget {
  const experience({Key? key}) : super(key: key);

  @override
  State<experience> createState() => _experienceState();
}

class _experienceState extends State<experience> {
  String? employeed = "";
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        backgroundColor: Colors.black45,
      ),
      body: Column(children: [
        Container(
          height: s.height * 0.12,
          width: s.width,
          alignment: const Alignment(0, -1),
          decoration: const BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Text(
            "Experience",
            style: titletextstyle,
          ),
        ),
        Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Company name",
                      style: educationtitle,
                    ),
                  ),
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter The Company name";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Microsoft",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "School / College / Institute",
                      style: educationtitle,
                    ),
                  ),
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter name";
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "IIT Bombay",
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Roles(optional)",
                      style: educationtitle,
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText:
                            "Working With New Team Members to Achieve New Goals",
                        contentPadding: EdgeInsets.symmetric(vertical: 40)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Employed Status"),
                  ),
                  RadioListTile(
                      value: "Previous Employeed",
                      title: const Text("Previous Employeed"),
                      groupValue: employeed,
                      onChanged: (val) {
                        setState(() {
                          employeed = val!;
                        });
                      }),
                  RadioListTile(
                      value: "Currently Employeed",
                      groupValue: employeed,
                      title: const Text("Currently Employeed"),
                      onChanged: (val) {
                        setState(() {
                          employeed = val!;
                        });
                      }),
                ],
              ),
            ),
          ),
        ),
      ]),
      backgroundColor: Colors.grey,
    );
  }
}
