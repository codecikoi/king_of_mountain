import 'package:flutter/material.dart';
import 'package:king_of_mountain/ui/widgets/action_button.dart';
import 'package:king_of_mountain/ui/widgets/avenger_Info.dart';
import 'package:king_of_mountain/ui/widgets/versus_back_gradient.dart';
import '../../utilities/avengers_colors.dart';
import '../../utilities/avengers_images.dart';
import 'semi_final_page.dart';

class FifthVsPage extends StatelessWidget {
  const FifthVsPage({Key? key}) : super(key: key);

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
                        name: 'Thanos',
                        imagePath: AvengersImages.thanos, onTap: () {  },
                      ),
                      Text(
                        'vs'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      AvengerInfo(
                        name: 'Thor',
                        imagePath: AvengersImages.thor, onTap: () {  },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ActionButton(
              onTap: () {
                print('tapped 5');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SemiFinalPage(),
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
