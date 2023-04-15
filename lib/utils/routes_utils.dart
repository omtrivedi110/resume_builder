import 'icons_utils.dart';
class routes {
  static String home = "/";
  static String workpage = "workapage";

  static List<Buildoptions> buildoptions = [
    Buildoptions(icon: "${icons}contact.png", name: "contact info", route: "contact_info"),
    Buildoptions(icon: "${icons}briefcase.png", name: "Carrier Objectives", route: "Carrier_objectives"),
    Buildoptions(icon: "${icons}user.png", name: "Personal Detail", route: "Personal_Detail"),
    Buildoptions(icon: "${icons}education.png", name: "Education", route: "education"),
    Buildoptions(icon: "${icons}thinking.png", name: "Experience", route: "experience"),
    Buildoptions(icon: "${icons}experience.png", name: "Technical Skill", route: "Technical_skill"),
    Buildoptions(icon: "${icons}open-book.png", name: "Interest/Hobbies", route: "Hobbies"),
    Buildoptions(icon: "${icons}project.png", name: "Project", route: "Project"),
    Buildoptions(icon: "${icons}achievement.png", name: "Achievement", route: "Achievement"),
    Buildoptions(icon: "${icons}handshake.png", name: "References", route: "References"),
    Buildoptions(icon: "${icons}declaration.png", name: "Declaration", route: "Declaration"),
  ];
}

class Buildoptions {
  final String icon;
  final String name;
  final String route;

  Buildoptions({
    required this.icon,
    required this.name,
    required this.route
  });
}

