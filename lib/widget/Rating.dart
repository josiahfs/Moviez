import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int index;
  final int rating;

  Rating({required this.index, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating ? 'assets/images/Star1.png' : 'assets/images/Star2.png',
      width: 18,
      height: 18,
    );
  }
}
