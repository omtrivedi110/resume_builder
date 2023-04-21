import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/utils/backbutton.dart';
import 'package:resume_builder/utils/textstyle.dart';
import 'package:resume_builder/utils/routes_utils.dart';
import 'package:resume_builder/utils/icons_utils.dart';
import 'package:resume_builder/utils/variables.dart';

class workpage extends StatefulWidget {
  const workpage({Key? key}) : super(key: key);

  @override
  State<workpage> createState() => _workpageState();
}

class _workpageState extends State<workpage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Resume Workspace",
            style: titletextstyle,
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: Mybackicon(),
        ),
        body: Column(
          children: [
            Container(
              width: s.width,
              height: s.height * 0.12,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(35))),
              child: Text(
                "\n Build Options",
                style: titletextstyle,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: routes.buildoptions
                      .map((e) => Container(
                            padding: const EdgeInsets.all(4.5),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  e.icon,
                                  height: 40,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  e.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                const Spacer(),
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed(e.route);
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios)),
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ],
        ));
  }
}
