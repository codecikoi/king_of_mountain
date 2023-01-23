import 'package:flutter/material.dart';
import 'package:king_of_mountain/ui/pages/fifth_versus_page.dart';
import 'package:king_of_mountain/ui/widgets/action_button.dart';
import 'package:king_of_mountain/ui/widgets/avenger_Info.dart';
import 'package:king_of_mountain/ui/widgets/versus_back_gradient.dart';
import '../../utilities/avengers_images.dart';

class FourthVsPage extends StatelessWidget {
  const FourthVsPage({Key? key}) : super(key: key);

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
                        name: 'Ironman',
                        imagePath: AvengersImages.ironman,
                      ),
                      Text(
                        'vs'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      AvengerInfo(
                        name: 'Spiderman',
                        imagePath: AvengersImages.spiderman,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ActionButton(
              onTap: () {
                print('tapped 4');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FifthVsPage(),
                  ),
                );
              },
              buttonText: 'next versus',
            ),
          ],
        ),
      ),
    );
  }
}
