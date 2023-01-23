import 'package:flutter/material.dart';
import 'package:king_of_mountain/ui/pages/first_versus_page.dart';
import 'package:king_of_mountain/ui/widgets/action_button.dart';
import 'package:king_of_mountain/ui/widgets/avenger_Info.dart';
import 'package:king_of_mountain/ui/widgets/versus_back_gradient.dart';
import 'package:king_of_mountain/utilities/avengers_colors.dart';
import '../../utilities/avengers_images.dart';
import 'final_result_page.dart';

class SemiFinalPage extends StatelessWidget {
  const SemiFinalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, /// to remove return button
        backgroundColor: AvengersColors.background,
        title: Text(
          'Semi-final'.toUpperCase(),
          style: TextStyle(color: AvengersColors.textColor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 360,
              child: Stack(
                children: [
                  VsBackGradient(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 10),
                          AvengerInfo(
                            name: 'Thor',
                            imagePath: AvengersImages.thor,
                            onTap: () {
                              print('selected');
                            },
                          ),
                          SizedBox(height: 20),
                          AvengerInfo(
                            name: 'Hulk',
                            imagePath: AvengersImages.hulk,
                            onTap: () {
                              print('selected');
                            },
                          ),
                        ],
                      ),
                      Center(
                        child: Text(
                          'vs'.toUpperCase(),
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 10),
                          AvengerInfo(
                            name: 'Batman',
                            imagePath: AvengersImages.batman,
                            onTap: () {},
                          ),
                          SizedBox(height: 20),
                          AvengerInfo(
                            name: 'Spiderman',
                            imagePath: AvengersImages.spiderman,
                            onTap: () {
                              print('selected');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ActionButton(
              onTap: () {
                print('tapped retry');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FinalResultPage(),
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
