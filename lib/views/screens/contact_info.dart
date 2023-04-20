import 'package:flutter/material.dart';

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
  GlobalKey namekey = GlobalKey<FormState>();

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
        backgroundColor: Colors.orangeAccent,
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
                        color: Colors.orangeAccent,
                      ),
                      child: Text(
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
                        color: Colors.orangeAccent,
                      ),
                      child: Text(
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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          // Text("hello")
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
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: 8,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                flex: 11,
                                child: TextFormField(
                                  // key: formkey,
                                  // key: namekey,
                                  decoration: const InputDecoration(
                                      hintText: "Address Line 1",
                                      border: UnderlineInputBorder()),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: 8,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                flex: 11,
                                child: TextFormField(
                                  // key: formkey,
                                  // key: namekey,
                                  decoration: const InputDecoration(
                                      hintText: "Address Line 2",
                                      border: UnderlineInputBorder()),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}
