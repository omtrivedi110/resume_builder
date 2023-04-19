import 'package:flutter/material.dart';
import 'package:resume_builder/utils/icons_utils.dart';
import 'package:resume_builder/utils/routes_utils.dart';
import 'package:resume_builder/utils/textstyle.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resume Builder",
          style: titletextstyle,
        ),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: s.width,
            height: s.height * 0.12,
            decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius:
                BorderRadius.vertical(bottom: Radius.circular(35))),
            child: Text(
              "\nRESUMES",
              style: titletextstyle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Column(
              children: [
                Image.asset(
                  "${icons}open-cardboard-box.png",
                  height: 125,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "No Resume\nclick '+' to create new resume",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(routes.workpage);
        },tooltip: "Create Resume",
        hoverColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}
