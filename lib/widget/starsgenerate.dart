import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({Key? key, this.stars}) : super(key: key);
  final int? stars;
  @override
  Widget build(BuildContext context) {
    final starrate = List.generate(stars!, (index) => index);
    return Row(
      children: starrate
          .map((star) => Container(
                margin: EdgeInsets.only(right: 4),
                child: Icon(
                  Icons.star_rate,
                  size: 18,
                  color: Colors.blueGrey,
                ),
              ))
          .toList(),
    );
  }
}
