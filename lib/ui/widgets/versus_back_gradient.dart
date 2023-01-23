import 'package:flutter/material.dart';

class VsBackGradient extends StatelessWidget {
  const VsBackGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ColoredBox(
            color: Colors.white,
          ),
        ),
        Expanded(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Color(0xffC5D1EA),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ColoredBox(
            color: Color(0xffC5D1EA),
          ),
        ),
      ],
    );
  }
}
