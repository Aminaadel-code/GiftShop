import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int rating; // مثال: 3 من 5
  final int maxRating;

  const StarRating({
    Key? key,
    this.rating = 0,
    this.maxRating = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(maxRating, (index) {
        return Icon(
          index < rating ? Icons.star : Icons.star_border,
          color: Colors.amber,
        );
      }),
    );
  }
}
