import 'package:flutter/material.dart';
import '../../utilities/avengers_colors.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  final Color color;

  const ActionButton({
    Key? key,
    required this.onTap,
    required this.buttonText, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
        height: 40,
        width: 110,
        child: Text(
          buttonText.toUpperCase(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: AvengersColors.textColor,
          ),
        ),
      ),
    );
  }
}
