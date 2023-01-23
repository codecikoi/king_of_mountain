import 'package:flutter/material.dart';
import 'package:king_of_mountain/ui/widgets/action_button.dart';
import 'package:king_of_mountain/ui/widgets/avenger_Info.dart';
import 'package:king_of_mountain/ui/widgets/versus_back_gradient.dart';
import '../../utilities/avengers_colors.dart';
import '../../utilities/avengers_images.dart';
import 'fourth_versus_page.dart';

class ThirdVsPage extends StatelessWidget {
  const ThirdVsPage({Key? key}) : super(key: key);

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
                        name: 'Groot',
                        imagePath: AvengersImages.groot,
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
                        name: 'Hulk',
                        imagePath: AvengersImages.hulk,
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
                print('tapped 3');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FourthVsPage(),
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
