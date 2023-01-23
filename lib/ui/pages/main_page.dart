import 'package:flutter/material.dart';
import 'package:king_of_mountain/ui/pages/first_versus_page.dart';
import 'package:king_of_mountain/utilities/avengers_colors.dart';
import 'package:king_of_mountain/utilities/avengers_logo.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AvengersColors.background,
          title: Text(
            'king of mountain'.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
              color: AvengersColors.textColor,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Container(
                child: Image.asset(AvengersLogo.mainLogo),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AvengersColors.background),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FirstVsPage(),
                  ),
                );
              },
              child: Text(
                'start'.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: AvengersColors.textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
