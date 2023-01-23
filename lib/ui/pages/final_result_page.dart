import 'package:flutter/material.dart';
import 'package:king_of_mountain/ui/pages/first_versus_page.dart';
import 'package:king_of_mountain/ui/widgets/action_button.dart';
import 'package:king_of_mountain/utilities/avengers_colors.dart';

class FinalResultPage extends StatelessWidget {
  const FinalResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        /// to remove return button
        backgroundColor: AvengersColors.background,
        title: Text(
          'final'.toUpperCase(),
          style: TextStyle(color: AvengersColors.textColor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ActionButton(
            onTap: () {
              print('tapped retry');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstVsPage(),
                ),
              );
            },
            buttonText: 'retry',
            color: AvengersColors.greyButtonColor,
          ),
        ),
      ),
    );
  }
}
