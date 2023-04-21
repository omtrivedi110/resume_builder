import 'package:resume_builder/views/screens/achievement.dart';
import 'package:resume_builder/views/screens/carrier_objective.dart';
import 'package:resume_builder/views/screens/contact_info.dart';
import 'package:resume_builder/views/screens/declaration.dart';
import 'package:resume_builder/views/screens/education.dart';
import 'package:resume_builder/views/screens/experience.dart';
import 'package:resume_builder/views/screens/hobbies.dart';
import 'package:resume_builder/views/screens/homepage.dart';
import 'package:resume_builder/views/screens/personal_detail.dart';
import 'package:resume_builder/views/screens/project.dart';
import 'package:resume_builder/views/screens/reference.dart';
import 'package:resume_builder/views/screens/technical_skill.dart';
import 'package:resume_builder/views/screens/workpage.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/utils/routes_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        routes.home : (context) => const homepage(),
        routes.workpage : (context) => const workpage(),
        routes.buildoptions[0].route : (context) => const contact_info(),
        routes.buildoptions[1].route : (context) => const carrier_objective(),
        routes.buildoptions[2].route : (context) => const personal_detail(),
        routes.buildoptions[3].route : (context) => const education(),
        routes.buildoptions[4].route : (context) => const experience(),
        routes.buildoptions[5].route : (context) => const Technical_skill(),
        routes.buildoptions[6].route : (context) => const Hobbies(),
        routes.buildoptions[7].route : (context) => const project(),
        routes.buildoptions[8].route : (context) => const achievement(),
        routes.buildoptions[9].route : (context) => const reference(),
        routes.buildoptions[10].route : (context) => const declaration(),

      },
    );
  }
}
