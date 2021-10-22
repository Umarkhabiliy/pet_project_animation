import 'package:animationpageproject/model/location.dart';
import 'package:flutter/material.dart';

class LatLongWidget extends StatelessWidget {
  
  const LatLongWidget({Key? key, this.location}) : super(key: key);
  final Location? location;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(location!.latitude!,style: TextStyle(color: Colors.white70),),
        Icon(
          Icons.location_on,
          color: Colors.white70,
        ),
        Text(
          location!.longitude!,
          style: TextStyle(color: Colors.white70),
        )
      ],
    );
  }
}
