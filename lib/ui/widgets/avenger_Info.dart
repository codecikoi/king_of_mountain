import 'package:flutter/material.dart';

class AvengerInfo extends StatelessWidget {
  final String name;
  final String imagePath;

  const AvengerInfo({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        Image.asset(
          imagePath,
          width: 100,
          height: 100,
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Icon(
              Icons.star,
              size: 20,
              color: Colors.amberAccent,
            ),
            Icon(
              Icons.star,
              size: 20,
              color: Colors.amberAccent,
            ),
            Icon(
              Icons.star,
              size: 20,
              color: Colors.amberAccent,
            ),
            Icon(
              Icons.star_outline,
              size: 20,
              color: Colors.amberAccent,
            ),
            Icon(
              Icons.star_outline,
              size: 20,
              color: Colors.amberAccent,
            ),
          ],
        )
      ],
    );
  }
}
