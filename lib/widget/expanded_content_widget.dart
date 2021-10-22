import 'package:animationpageproject/data/heroTag.dart';
import 'package:animationpageproject/data/listlocation.dart';
import 'package:animationpageproject/model/location.dart';
import 'package:animationpageproject/widget/hero_widget.dart';
import 'package:animationpageproject/widget/starsgenerate.dart';
import 'package:flutter/material.dart';

class ExpandedContentWidget extends StatelessWidget {
  const ExpandedContentWidget({Key? key, this.location}) : super(key: key);
  final Location? location;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          HeroWidget(
              tag: HeroTag.addressline1(location!),
              child: Text(location!.addressLine1!)),
          SizedBox(height: 8),
          buildAddressRating(location: location!),
          SizedBox(height: 12),
          buildReview(location: location!)
        ],
      ),
    );
  }

  Widget buildAddressRating({required Location location}) => Row(
        children: [
          HeroWidget(
              tag: HeroTag.addressLine2(location),
              child: Text(
                location.addressLine2!,
                style: TextStyle(color: Colors.black45),
              )),
          HeroWidget(
            tag: HeroTag.stars(location),
            child: StarWidget(stars: location.starRating),
          ), //stars Widget change
        ],
      );
  Widget buildReview({required Location location}) => Row(
        children: location.reviews!.map((e) {
          final pageIndex = locations.indexOf(location);
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: HeroWidget(
              tag: HeroTag.avatar(e, pageIndex),
              child: CircleAvatar(
                radius: 16,
                backgroundColor: Colors.black12,
                // backgroundImage: AssetImage("lk"),
              ),
            ),
          );
        }).toList(),
      );
}
