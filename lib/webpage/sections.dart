import 'package:dexider/webpage/sections/export_sections.dart';

class Sections {
  static String navbar(
      {required String title,
      required List<String> buttons,
      required bool isSelected}) {
    return Navbar.navbar(title, buttons, isSelected);
  }

  static String heroBanner() {
    return HeroBanner.heroBanner(
      title: 'Jelsi',
      desc:
          'We Textiles offer an exquisite collection of quality home and office textiles, all made with the finest fabrics and materials. From cotton sarees to designer bed sheets, we have something to suit every occasion. We specialize in suiting, shirting, and other clothing fabric that provide superior comfort and style. With unbeatable quality, unique design, and competitive prices',
      imageUrl:
          'https://images.unsplash.com/photo-1476683874822-744764a2438f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      buttonText: 'Order Now',
    );
  }
}
