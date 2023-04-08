import 'package:flutter/material.dart';

class DurationManager {

  static smoothCall(VoidCallback func){
    Future.delayed(Duration(milliseconds: 500),func);
  }

}