import 'package:flutter/material.dart';
import 'package:resume_builder/utils/variables.dart';

import '../../utils/backbutton.dart';
import '../../utils/textstyle.dart';

class Technical_skill extends StatefulWidget {
  const Technical_skill({Key? key}) : super(key: key);
  @override
  State<Technical_skill> createState() => _Technical_skillState();
}

class _Technical_skillState extends State<Technical_skill> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Myvariable.skillcontroller.isEmpty) {
      Myvariable.skillcontroller.add(TextEditingController());
      Myvariable.skillcontroller.add(TextEditingController());
    }
  }

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
            "Technical skill",
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
                      "Enter your skill",
                      style: educationtitle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ...List.generate(Myvariable.skillcontroller.length,
                        (index) => Myskilltile(index: index)),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Myvariable.skillcontroller
                                .add(TextEditingController());
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

  Widget Myskilltile({required int index}) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: Myvariable.skillcontroller[index],
            decoration: const InputDecoration(
              hintText: "C Programming , Web Technical",
            ),
            onChanged: (val) {},
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              Myvariable.skillcontroller.removeAt(index);
            });
          },
          icon: const Icon(Icons.delete_forever),
        )
      ],
    );
  }
}
