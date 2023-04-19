import 'package:flutter/material.dart';
import 'package:resume_builder/utils/backbutton.dart';

import '../../utils/textstyle.dart';

class personal_detail extends StatefulWidget {
  const personal_detail({Key? key}) : super(key: key);

  @override
  State<personal_detail> createState() => _personal_detailState();
}

class _personal_detailState extends State<personal_detail> {
  GlobalKey<FormState> formkey = GlobalKey();
  String maritstatus = "";
  String national = "";
  bool englishcheckbox = false;
  bool hindicheckbox = false;
  bool gujaraticheckbox = false;
  String value = "IN";

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Personal Detail",
          style: titletextstyle,
        ),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Date of Birth",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: s.height * 0.01,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "DD"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "MM"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: "YYYY"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: s.height * 0.02,
                ),
                const Text(
                  "Marital Status",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: s.height * 0.005,
                ),
                RadioListTile(
                    value: "Single",
                    groupValue: maritstatus,
                    title: const Text("Single"),
                    onChanged: (val) {
                      setState(() {
                        maritstatus = val!;
                      });
                    }),
                RadioListTile(
                    value: "Marride",
                    title: const Text("Marride"),
                    groupValue: maritstatus,
                    onChanged: (val) {
                      setState(() {
                        maritstatus = val!;
                      });
                    }),
                SizedBox(
                  height: s.height * 0.005,
                ),
                const Text(
                  "Language Known By You",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: s.height * 0.005,
                ),
                CheckboxListTile(
                    value: englishcheckbox,
                    title: const Text("English"),
                    controlAffinity: ListTileControlAffinity.leading,
                    subtitle: const Text("2nd language is also available"),
                    onChanged: (val) {
                      setState(() {
                        englishcheckbox = val!;
                      });
                    }),
                CheckboxListTile(
                    value: hindicheckbox,
                    title: const Text("Hindi"),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (val) {
                      setState(() {
                        hindicheckbox = val!;
                      });
                    }),
                CheckboxListTile(
                    value: gujaraticheckbox,
                    title: const Text("Gujarati"),
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (val) {
                      setState(() {
                        gujaraticheckbox = val!;
                      });
                    }),
                Text(
                  "Nationality",
                  style: educationtitle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 5),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Indian",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          border: const OutlineInputBorder(),
                        ),
                        onSaved: (val) {
                          national = val!;
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
              onPressed: () {}, child: const Text("SAVE"))),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
