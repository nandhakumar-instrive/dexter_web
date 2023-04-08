import 'package:flutter/material.dart';

class HeroBanner extends StatefulWidget {
  const HeroBanner({super.key});

  @override
  State<HeroBanner> createState() => _HeroBannerState();
}

class _HeroBannerState extends State<HeroBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const NetworkImage("https://unsplash.com/photos/s5kTY-Ve1c0"),
          fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.2),
            BlendMode.darken
            ),
        ),
      ),
      
    );
  }
}