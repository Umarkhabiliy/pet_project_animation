import 'package:animationpageproject/model/location.dart';

class HeroTag {
  static String image(String urlImage) => urlImage;
  static String addressline1(Location location) =>
      location.name! + location.addressLine1!;
      static String addressLine2(Location location) =>
      location.name! + location.addressLine2!;
  static String stars(Location location) =>
      location.name! + location.starRating.toString();

  static String avatar(Review review, int position) =>
      review.urlImage! + position.toString();
}
