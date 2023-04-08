import 'package:flutter/material.dart';

import 'style_manager.dart';
import 'values_manager.dart';
import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  Color white = ColorManager.white;
  Color textColor = ColorManager.darkGrey;
  Color darkPrimary = ColorManager.primaryDark;
  Color shadowColor = ColorManager.midGrey;
  Color splashColor = ColorManager.lightGrey;
  Color modalWidgetsBGColor = ColorManager.white;
  Color cardColor = ColorManager.white;
  Color canvasColor = ColorManager.lightGrey;

  return ThemeData(
    // main colors of the app
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryLight,
    primaryColorDark: ColorManager.primaryDark,
    disabledColor: ColorManager.grey1,
    cardColor: cardColor,
    canvasColor: canvasColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColorManager.grey,
      primary: ColorManager.primary,
    ),

    textSelectionTheme: TextSelectionThemeData(),
    chipTheme: ChipThemeData(
      backgroundColor: Colors.transparent,
      surfaceTintColor: ColorManager.primary,
      deleteIconColor: ColorManager.primary.withOpacity(0.87),
      labelStyle: TextStyle(
        fontSize: 14,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeightManager.regular,
        color: ColorManager.primary,
      ),
    ),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: ColorManager.primary),
    primarySwatch: ColorManager.getSwatch(color: ColorManager.primary),
    unselectedWidgetColor: ColorManager.grey1,
    //ripple color
    splashColor: splashColor,
    // card view theme
    cardTheme: CardTheme(
      color: white,
      shadowColor: shadowColor,
      elevation: AppSize.s4,
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: ColorManager.white,
      textStyle:
          getMediumStyle(color: ColorManager.black, fontSize: FontSize.s16),
    ),
    // app bar theme
    appBarTheme: AppBarTheme(
        centerTitle: false,
        color: white,
        actionsIconTheme: IconThemeData(color: ColorManager.grey),
        foregroundColor: textColor,
        elevation: 0,
        shadowColor: shadowColor,
        iconTheme: IconThemeData(color: ColorManager.primary),
        titleTextStyle: TextStyle(
            height: 1.5,
            color: textColor,
            fontSize: FontSize.s18,
            fontWeight: FontWeightManager.medium),
        toolbarTextStyle: getRegularStyle(
            color: ColorManager.primary, fontSize: FontSize.s12)),
    shadowColor: shadowColor,
    // button theme
    buttonTheme: ButtonThemeData(
        shape: const RoundedRectangleBorder(),
        disabledColor: ColorManager.grey1,
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryOpacity70),
    scaffoldBackgroundColor: ColorManager.scaffoldBackground,
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        textStyle: getRegularStyle(color: white, fontSize: FontSize.s14),
        backgroundColor: ColorManager.primary,
        minimumSize: const Size.fromHeight(45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            color: ColorManager.primary,
            width: 1,
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(45),
        textStyle: getRegularStyle(color: darkPrimary, fontSize: FontSize.s16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: BorderSide(
            color: darkPrimary,
            width: 2,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all(TextStyle(
            color: ColorManager.primary,
            fontWeight: FontWeightManager.regular,
            fontSize: FontSize.s16)),
        foregroundColor: MaterialStateProperty.all(
          ColorManager.primary,
        ),
      ),
    ),

    // text theme

    textTheme: TextTheme(
      displayLarge: const TextStyle(
          fontFamily: FontConstants.fontFamily,
          fontSize: 38,
          height: 1.2,
          fontWeight: FontWeightManager.regular,
          color: ColorManager.textColor),
      displayMedium: getSemiBoldStyle(color: textColor, fontSize: FontSize.s26),
      displaySmall: getBoldStyle(color: textColor, fontSize: FontSize.s22),
      headlineMedium: getBoldStyle(color: textColor, fontSize: FontSize.s24),
      headlineSmall: getBoldStyle(color: textColor, fontSize: FontSize.s26),
      titleLarge: TextStyle(
        color: ColorManager.textColorDark,
        letterSpacing: 1.1,
        fontSize: 20,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w600,
      ),
      // this is used by the input textfield deafult style value
      titleMedium: TextStyle(
        color: Colors.grey.shade800.withOpacity(0.87),
        fontSize: 16,
        letterSpacing: 0.8,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w900,
        height: 1.5,
      ),
      titleSmall: TextStyle(
        color: ColorManager.tc2,
        fontSize: 16,
        letterSpacing: 0.8,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        height: 1.5,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeightManager.regular,
        color: ColorManager.textColor,
      ),
      bodyLarge: const TextStyle(
        fontSize: 16,
        height: 1.5,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeightManager.regular,
        color: ColorManager.textColor,
      ),
      bodyMedium: const TextStyle(
        fontSize: 16,
        height: 1.5,
        fontFamily: FontConstants.fontFamily,
        fontWeight: FontWeightManager.medium,
        color: ColorManager.textColorLight,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s20),
            topRight: Radius.circular(AppSize.s20),
          ),
        ),
        modalBarrierColor: Colors.black45,
        modalElevation: AppSize.s4,
        modalBackgroundColor: modalWidgetsBGColor,
        backgroundColor: Colors.black45),
    dialogTheme: DialogTheme(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s20))),
        elevation: 2,
        backgroundColor: modalWidgetsBGColor),
    dividerColor: shadowColor,
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: ColorManager.primary,
      labelColor: ColorManager.primary,
      unselectedLabelColor: ColorManager.primary,
      labelPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      indicator: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(4),
          topEnd: Radius.circular(4),
        ),
        // gradient: ,
        // border: Border.symmetric(),
        color: ColorManager.primary,
        // boxShadow: [
        //   BoxShadow(
        //     color: ColorManager.primary.withOpacity(0.5),
        //     spreadRadius: 1,
        //     blurRadius: 2,
        //     offset: const Offset(0, 1),
        //   ),
        // ],
      ),
      labelStyle: TextStyle(
        color: textColor,
        fontSize: FontSize.s14,
        fontWeight: FontWeightManager.regular,
      ),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // contentPadding: const EdgeInsets.all(8),
      // hintStyle: TextStyle(
      //   color: ColorManager.grey,
      //   fontSize: 14,
      //   fontWeight: FontWeightManager.medium,
      // ),

      fillColor: Colors.white,
      filled: true,
      isDense: true,

      // isCollapsed: true,

      hintStyle: TextStyle(
        color: Color(0xff181818).withOpacity(0.2),
        fontSize: 15,
        fontFamily: 'helvetica',
        fontWeight: FontWeight.normal,
      ),

      labelStyle: MaterialStateTextStyle.resolveWith(
        (Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.focused)
              ? states.contains(MaterialState.selected)
                  ? Colors.red
                  : Colors.amber
              : ColorManager.black.withOpacity(0.6);
          return TextStyle(
            color: color,
            letterSpacing: 0.4,
            fontSize: 14,
            fontFamily: 'helvetica',
            fontWeight: FontWeight.normal,
          );
        },
      ),

      floatingLabelStyle: MaterialStateTextStyle.resolveWith(
        (Set<MaterialState> states) {
          final Color color = states.contains(MaterialState.focused)
              ? ColorManager.primary
              : ColorManager.primary.withOpacity(0.87);
          return TextStyle(
            color: color,
            fontSize: 15,
            fontFamily: 'helvetica',
            fontWeight: FontWeight.normal,
          );
        },
      ),

      floatingLabelBehavior: FloatingLabelBehavior.auto,
      errorStyle: getRegularStyle(color: ColorManager.error),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.borderColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(AppSize.s4),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.textColor.withOpacity(0.08),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(AppSize.s4),
        gapPadding: 4.0,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primaryLight.withOpacity(0.45),
          width: 0.8,
        ),
        borderRadius: BorderRadius.circular(AppSize.s4),
        gapPadding: 4.0,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(AppSize.s4),
        gapPadding: 2.0,
      ),

      // errorBorder: OutlineInputBorder(
      //   borderSide: BorderSide(
      //     color: ColorManager.error,
      //     width: 1,
      //   ),
      //   borderRadius: BorderRadius.circular(
      //     AppSize.s4,
      //   ),
      // ),
      // focusedErrorBorder: OutlineInputBorder(
      //   borderSide: BorderSide(
      //     color: ColorManager.borderColor,
      //     width: 1,
      //   ),
      //   borderRadius: BorderRadius.circular(
      //     AppSize.s4,
      //   ),
      // ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: ColorManager.primary,
      unselectedItemColor: ColorManager.grey.withOpacity(0.45),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      elevation: 20,
      backgroundColor: Colors.white,
    ),
  );
}
