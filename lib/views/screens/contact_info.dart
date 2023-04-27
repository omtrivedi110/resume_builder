import 'dart:io';

import 'package:flutter/material.dart';
import 'package:resume_builder/utils/variables.dart';
import 'package:image_picker/image_picker.dart';
import '../../utils/backbutton.dart';
import '../../utils/icons_utils.dart';
import '../../utils/textstyle.dart';

class contact_info extends StatefulWidget {
  const contact_info({Key? key}) : super(key: key);

  @override
  State<contact_info> createState() => _contact_infoState();
}

class _contact_infoState extends State<contact_info> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  int index = 0;
  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Mybackicon(),
        title: Text(
          "Contact Info",
          style: titletextstyle,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: s.height * 0.12,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: index == 0 ? 3 : 0,
                            color: Colors.amber,
                          ),
                        ),
                        color: Colors.black,
                      ),
                      child: const Text(
                        "Contact Detail",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      height: s.height * 0.12,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: index == 1 ? 3 : 0,
                            color: Colors.amber,
                          ),
                        ),
                        color: Colors.black,
                      ),
                      child: const Text(
                        "Profile Photo",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 11,
            child: IndexedStack(
              index: index,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    // height: 5,
                    width: s.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Form(
                      key: formkey,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    "${icons}user.png",
                                    height: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Name",
                                        labelText: "Name",
                                        border: UnderlineInputBorder()),
                                    onSaved: (val) {
                                      Myvariable.name = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Your Name";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(child: Icon(Icons.mail)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Mail",
                                        labelText: "Mail",
                                        border: UnderlineInputBorder()),
                                    onSaved: (val) {
                                      Myvariable.mail = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Mail";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(child: Icon(Icons.call)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    maxLength: 10,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.phone,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Phone Number",
                                        labelText: "Phone",
                                        prefixText: "+91",
                                        border: UnderlineInputBorder()),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Phone Number";
                                      } else if (val!.length < 10) {
                                        return "Invalid Number";
                                      } else {
                                        return null;
                                      }
                                    },
                                    onSaved: (val) {
                                      Myvariable.phoneno = int.parse(val!);
                                    },
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(child: Icon(Icons.location_pin)),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    decoration: const InputDecoration(
                                        hintText: "Enter Address",
                                        border: UnderlineInputBorder()),
                                    onSaved: (val) {
                                      Myvariable.a1 = val;
                                    },
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Enter Address";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: SizedBox(
                                    width: 8,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: "Address Line 1",
                                        border: UnderlineInputBorder()),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Expanded(
                                  child: SizedBox(
                                    width: 8,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 11,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: "Address Line 2",
                                        border: UnderlineInputBorder()),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          formkey.currentState!.validate();
                                          formkey.currentState!.save();
                                        },
                                        child: const Text("Save")),
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            Myvariable.name = Myvariable.a1 =
                                                Myvariable.mail = Myvariable
                                                    .a2 = Myvariable
                                                        .a3 =
                                                    Myvariable.phoneno = null;
                                            formkey.currentState!.reset();
                                          });
                                        },
                                        child: const Text("Reset")),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 70,
                        foregroundImage: (Myvariable.image != null)
                            ? FileImage(Myvariable.image!)
                            : null,
                        child: const Text("ADD"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: const Text("Select the Method..."),
                                    actions: [
                                      TextButton.icon(
                                        onPressed: () async {
                                          Navigator.of(context).pop();

                                          XFile? img = await picker.pickImage(
                                              source: ImageSource.camera);

                                          if (img != null) {
                                            setState(() {
                                              Myvariable.image = File(img.path);
                                            });
                                          }
                                          ;
                                        },
                                        label: const Text("Camera"),
                                        icon: const Icon(Icons.camera_alt),
                                      ),
                                      TextButton.icon(
                                        onPressed: () async {
                                          Navigator.of(context).pop();

                                          XFile? img = await picker.pickImage(
                                              source: ImageSource.gallery);

                                          if (img != null) {
                                            setState(() {
                                              Myvariable.image = File(img.path);
                                            });
                                          }
                                        },
                                        label: const Text("Gallery"),
                                        icon: const Icon(Icons.image),
                                      ),
                                    ],
                                  ));
                        },
                        mini: true,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(Icons.camera),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}
