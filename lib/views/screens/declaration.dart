import 'package:flutter/material.dart';

import '../../utils/backbutton.dart';

class declaration extends StatefulWidget {
  const declaration({Key? key}) : super(key: key);

  @override
  State<declaration> createState() => _declarationState();
}

class _declarationState extends State<declaration> {
  bool switchval = false;
  @override
  Widget build(BuildContext context) {
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
                      children: const [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.radar,
                            size: 100,
                          ),
                        ),
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
