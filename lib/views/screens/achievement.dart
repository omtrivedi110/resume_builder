import 'package:flutter/material.dart';

import '../../utils/backbutton.dart';
import '../../utils/textstyle.dart';
import '../../utils/variables.dart';

class achievement extends StatefulWidget {
  const achievement({Key? key}) : super(key: key);

  @override
  State<achievement> createState() => _achievementState();
}

class _achievementState extends State<achievement> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  int i = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        Container(
          height: s.height * 0.08,
          width: s.width,
          alignment: const Alignment(0, -1.45),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Text(
            "Technical achievement",
            style: titletextstyle,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Enter Achievement",
                      style: educationtitle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Exceeeded sales 17 % Average",
                            ),
                            onChanged: (val) {},
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              Myvariable.achievement.remove("");
                            });
                          },
                          icon: const Icon(Icons.delete_forever),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "Exceeeded sales 17 % Average",
                            ),
                            onChanged: (val) {},
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              Myvariable.achievement.remove("");
                            });
                          },
                          icon: const Icon(Icons.delete_forever),
                        )
                      ],
                    ),
                    ...Myvariable.achievement.map((e) {
                      return Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Exceeeded sales 17 % Average",
                              ),
                              onChanged: (val) {},
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                Myvariable.achievement.remove("");
                              });
                            },
                            icon: const Icon(Icons.delete_forever),
                          )
                        ],
                      );
                    }).toList(),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Myvariable.achievement.add("");
                            i++;
                          });
                        },
                        child: const Icon(Icons.add),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
      backgroundColor: Colors.grey,
    );
  }
}
