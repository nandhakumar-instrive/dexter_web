import 'package:dexider/webpage/common_json.dart';
import 'package:dexider/webpage/sections/about.dart';
import 'package:dexider/webpage/sections/export_sections.dart';
import 'package:dexider/webpage/sections/footer.dart';

class Sections {
  static String navbar(
      {required String title,
      required List<String> buttons,
      required bool isSelected}) {
    return Navbar.navbar(title, buttons, isSelected);
  }

  static String heroBanner() {
    return HeroBanner.heroBanner(
      title: Common.heroTitle,
      desc: Common.heroDesc,
      imageUrl:
          'https://images.unsplash.com/photo-1476683874822-744764a2438f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      buttonText: 'Order Now',
    );
  }

  // about section
  static String about() {
    return AboutSection.about(
      title: Common.aboutTitle,
      desc: Common.aboutDesc,
      imageUrl:
          'https://images.unsplash.com/photo-1476683874822-744764a2438f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
    );

    // product section
  }

  static String footer() {
    return Footer.footer();
  }
}
