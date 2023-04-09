import 'package:dexider/webpage/common_json.dart';
import 'package:flutter/material.dart';

class ViewModel {
  final TextEditingController navbarTitle = TextEditingController();
  final TextEditingController navbarTitle1 = TextEditingController();
  final TextEditingController navbarTitle2 = TextEditingController();
  final TextEditingController navbarTitle3 = TextEditingController();
  final TextEditingController navbarTitle4 = TextEditingController();

  void inializeValues() {
    navbarTitle.text = Common.navbarName;
    navbarTitle1.text = Common.navButtons[0];
    navbarTitle2.text = Common.navButtons[1];
    navbarTitle3.text = Common.navButtons[2];
    navbarTitle4.text = Common.navButtons[3];
  }

  void updateValues() {
    Common.setNavbarName(navbarTitle.text);
    Common.setNavButtons(
      [
        navbarTitle1.text,
        navbarTitle2.text,
        navbarTitle3.text,
        navbarTitle4.text,
      ],
    );
  }
}
