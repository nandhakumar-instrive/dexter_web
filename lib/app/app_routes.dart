import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Routes {
  //welcome
  static const String splash = "/";
  static const String welcome = "/welcome";

  //authentication
  static const String signin = "/signin";
  static const String signup = "/signup";
  static const String otp = "/otp";

  //profile
  static const String createProfile = "/create-profile";

  //settings
  static const String viewProfile = "/view-profile";
  static const String editProfile = "/edit-profile";

  //dashboard
  static const String search = "/search";

  //jobs
  static const String createJobPreference = "/create-job-preference";
  static const String createJobPost = "/create-job-post";
  static const String editJobPost = "/edit-job-post";
  static const String jobPostDetails = "/job-post-details";
  static const String applyJob = "/job-apply";
  static const String myJobs = "/my-jobs";
  static const String applicants = "/applicants";

  //home
  static const String home = "/home";

  //talk
  static const String createTalk = "/create-talk";
  static const String editTalk = "/edit-talk";
  static const String createTemplate = "/create-template";
  static const String talkDetails = "/talk-details";
}

class RouteGenerator {
  final RouteSettings settings;

  RouteGenerator({required this.settings});

  Route<dynamic> getRoute() {
    switch (settings.name) {
      
      
      default:
        return unDefinedRoute();
    }
  }

  getTransistionPage(Widget child) {
    return PageTransition(
      child: child,
      settings: settings,
      type: PageTransitionType.fade,
    );
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text('Not Found'),
        ),
      ),
    );
  }
}
