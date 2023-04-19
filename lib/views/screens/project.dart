import 'package:flutter/material.dart';
import 'package:resume_builder/utils/backbutton.dart';

import '../../utils/textstyle.dart';

class project extends StatefulWidget {
  const project({Key? key}) : super(key: key);

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool ccheckbox = false;
  bool javacheckbox = false;
  bool dartcheckbox = false;
  bool htmlcheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Projects",
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
                      "Project title",
                      style: educationtitle,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 18),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Resume Builder App",
                              hintStyle: TextStyle(color: Colors.grey.shade400),
                              border: const OutlineInputBorder(),
                            ),
                            onSaved: (val) {
                              // course = val!;
                              // print(course);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Technologies",
                          style: educationtitle,
                        ),
                        CheckboxListTile(
                            value: ccheckbox,
                            controlAffinity: ListTileControlAffinity.leading,
                            title: const Text("C Programming",style: TextStyle(color: Colors.grey),),
                            onChanged: (val) {
                              setState(() {
                                ccheckbox = val!;
                              });
                            }),
                        CheckboxListTile(
                            value: javacheckbox,
                            title: const Text("JS Development",style: TextStyle(color: Colors.grey),),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (val) {
                              setState(() {
                                javacheckbox = val!;
                              });
                            }),
                        CheckboxListTile(
                            value: htmlcheckbox,
                            title: const Text("HTML Programming",style: TextStyle(color: Colors.grey),),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (val) {
                              setState(() {
                                htmlcheckbox = val!;
                              });
                            }),
                        CheckboxListTile(
                            value: dartcheckbox,
                            title: const Text("Flutter",style: TextStyle(color: Colors.grey),),
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (val) {
                              setState(() {
                                dartcheckbox = val!;
                              });
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Roles", style: educationtitle),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 18),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Organised team member",
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
                        Text("Technologies", style: educationtitle),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, right: 18),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Give program name you worked",
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
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Project Description", style: educationtitle),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, right: 18, bottom: 20),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Project Description",
                                  hintStyle:
                                      TextStyle(color: Colors.grey.shade400),
                                  border: const OutlineInputBorder(),
                                ),
                                onSaved: (val) {
                                  // perc = val!;
                                },
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: ElevatedButton(
                                      onPressed: () {}, child: const Text("SAVE"))),
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
