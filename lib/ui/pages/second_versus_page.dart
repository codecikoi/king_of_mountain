import 'package:flutter/material.dart';
import 'package:king_of_mountain/ui/pages/third_versus_page.dart';
import 'package:king_of_mountain/ui/widgets/action_button.dart';
import 'package:king_of_mountain/ui/widgets/avenger_Info.dart';
import 'package:king_of_mountain/ui/widgets/versus_back_gradient.dart';
import '../../utilities/avengers_colors.dart';
import '../../utilities/avengers_images.dart';
import 'first_versus_page.dart';

class SecondVsPage extends StatelessWidget {
  const SecondVsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  VsBackGradient(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AvengerInfo(
                        name: 'Black Widow',
                        imagePath: AvengersImages.blackWidow,
                        onTap: () {
                          print('selected');
                        },
                      ),
                      Text(
                        'vs'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      AvengerInfo(
                        name: 'Captain America',
                        imagePath: AvengersImages.captainAmerica,
                        onTap: () {
                          print('selected');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ActionButton(
              onTap: () {
                print('tapped 2');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdVsPage(),
                  ),
                );
              },
              buttonText: 'next versus',
              color: AvengersColors.greyButtonColor,
            ),
          ],
        ),
      ),
    );
  }
}
