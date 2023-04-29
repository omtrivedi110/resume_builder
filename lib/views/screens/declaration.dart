import 'package:flutter/material.dart';

import '../../utils/backbutton.dart';
import '../../utils/variables.dart';

class declaration extends StatefulWidget {
  const declaration({Key? key}) : super(key: key);

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  bool switchval = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.radar, size: s.height * 0.1),
                        SizedBox(height: s.height * 0.04),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: TextFormField(
                            initialValue: Myvariable.declaration,
                            textInputAction: TextInputAction.next,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter The Description";
                              } else {
                                return null;
                              }
                            },
                            onSaved: (value) {
                              Myvariable.declaration = value;
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              contentPadding: const EdgeInsets.all(10),
                              hintText: "Description",
                              hintStyle: const TextStyle(
                                  color: Colors.grey, fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(height: s.height * 0.04),
                        Container(
                          height: 2,
                          width: s.width,
                          color: Colors.grey.shade400,
                        ),
                        SizedBox(height: s.height * 0.02),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              height: s.height * 0.17,
                              width: s.width * 0.38,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Date",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: 10,
                                    // ),
                                    TextFormField(
                                      initialValue: (Myvariable.declaration ==
                                              null)
                                          ? null
                                          : Myvariable.declaration.toString(),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Enter The Date";
                                        } else {
                                          return null;
                                        }
                                      },
                                      onSaved: (value) {
                                        Myvariable.declaration;
                                      },
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.only(left: 10),
                                        hintText: "DD/MM/YYYY",
                                        hintStyle: TextStyle(
                                          color: Colors.grey.shade400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: s.width * .01),
                            Container(
                              height: s.height * 0.17,
                              width: s.width * 0.38,
                              padding: const EdgeInsets.all(20),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Place(Interview\nvenue/city)",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  // Spacer(),
                                  TextFormField(
                                    initialValue: Myvariable.declaration,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Enter The Place";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (value) {
                                      Myvariable.declaration = value;
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.only(left: 10),
                                      hintText: "Eg. Surat",
                                      hintStyle: TextStyle(
                                        color: Colors.grey.shade400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (formkey.currentState!.validate()) {
                                    formkey.currentState!.save();
                                  }
                                });
                              },
                              child: const Text(
                                "SAVE",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
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
