import 'package:flutter/material.dart';
import 'package:king_of_mountain/utilities/avangers_images.dart';

class FirstVsPage extends StatelessWidget {
  const FirstVsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset(
            AvengersImages.batman,
          ),
        ),
      ),
    );
  }
}
