import 'package:dexider/webpage/common_json.dart';
import 'package:flutter/material.dart';

class ViewModel {
  final TextEditingController navbarTitle = TextEditingController();
  final TextEditingController navbarTitle1 = TextEditingController();
  final TextEditingController navbarTitle2 = TextEditingController();
  final TextEditingController navbarTitle3 = TextEditingController();
  final TextEditingController navbarTitle4 = TextEditingController();

  final TextEditingController heroBannerTitle = TextEditingController();
  final TextEditingController heroBannerSubtitle = TextEditingController();

  final TextEditingController aboutTitle = TextEditingController();
  final TextEditingController aboutDesc = TextEditingController();

  void inializeValues() {
    navbarTitle.text = Common.navbarName;
    navbarTitle1.text = Common.navButtons[0];
    navbarTitle2.text = Common.navButtons[1];
    navbarTitle3.text = Common.navButtons[2];
    navbarTitle4.text = Common.navButtons[3];

    heroBannerTitle.text = Common.heroTitle;
    heroBannerSubtitle.text = Common.heroDesc;

    aboutTitle.text = Common.aboutTitle;
    aboutDesc.text = Common.aboutDesc;
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

    Common.setHeroTitle(heroBannerTitle.text);
    Common.setHeroDesc(heroBannerSubtitle.text);

    Common.setAboutTitle(aboutTitle.text);
    Common.setAboutDesc(aboutDesc.text);
  }
}
