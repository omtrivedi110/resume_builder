import 'package:flutter/material.dart';

import '../../utils/backbutton.dart';

class declaration extends StatefulWidget {
  const declaration({Key? key}) : super(key: key);

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool switchval = false;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SwitchListTile(
                  title: const Text("Declaration"),
                  value: switchval,
                  onChanged: (val) {
                    setState(() {
                      switchval = val;
                    });
                  }),
              (switchval)
                  ? Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.radar,
                            size: 100,
                          ),
                        ),
                        Form(
                          key: formkey,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Enter Description"),
                              ),
                              const Divider(),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      const Text("Date"),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: s.width / 2.5,
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Enter Date"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text("Place(interview Venue/city)"),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        width: s.width / 2.5,
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                              hintText: "Enter Date"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              ElevatedButton(
                                  onPressed: () {}, child: const Text("Save"))
                            ],
                          ),
                        )
                      ],
                    )
                  : Container()
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
