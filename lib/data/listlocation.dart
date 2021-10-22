import 'package:animationpageproject/model/location.dart';

List<Location> locations = [
  Location(
    name: 'Samarkand',
    urlImage: 'assets/registan.jpg',
    addressLine1: 'Uzbekistan, Samarkand',
    addressLine2: 'Regisan Square',
    starRating: 5,
    latitude: 'NORTH LAT 24',
    longitude: 'EAST LNG 17',
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Bukhara',
    urlImage: 'assets/bukhara.jpg',
    addressLine1: 'Uzbekistan, Bukhara',
    addressLine2: 'Minaraet Kalyan',
    starRating: 5,
    latitude: 'SOUTH LAT 14',
    longitude: 'EAST LNG 27',
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Khiva',
    urlImage: 'assets/khiva.jpg',
    addressLine1: 'Uzbekistan, Khorezm Khiva',
    addressLine2: 'Khiva Itchan Kala',
    starRating: 5,
    latitude: 'NORTH LAT 24',
    longitude: 'WEST LNG 08',
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Bukhara',
    urlImage: 'assets/bukhara2.jpg',
    addressLine1: 'Uzbekistan, Bukhara',
    addressLine2: 'Islamic',
    starRating: 4,
    latitude: 'SOUTH LAT 39',
    longitude: 'WEST LNG 41',
    reviews: Reviews.allReviews,
  ),
];

class Reviews {
  static List<Review> allReviews = [
    Review(
      date: 'JAN 31th',
      username: 'Maruf Subhani',
      urlImage: 'assets/user1.png',
      description:
          'Beautiful place madarsa and mosque and historical site. Registan is must see place in Samarqand. Unique architectural design and in the night time this place is more beautiful because of lighting',
    ),
    Review(
      date: 'SEP 21th',
      username: 'Edward B',
      urlImage: 'assets/user2.png',
      description:
          'We visited this place with a couple of my friends and must say it was really beautiful and Amazing at the same time. We had to come back at sunset to see it from a Resturant’s deck.',
    ),
    Review(
      date: 'Aug 18th',
      username: 'Reza Sattarzadeh',
      urlImage: 'assets/user3.png',
      description:
          'If you buy a comprehensive ticket, it will allow you not only to enter the castle, but you can climb up the stairs to a balcony which gives incredible views over the historical site of Khiva. It is best to go there at sunset time as the view is beautiful and there are great photo opportunities. Apart from this, the castle is big with different sections to explore. Two hours would be enough.',
    ),
    Review(
      date: 'AUG 15th',
      username: 'Kim Wexler',
      urlImage: 'assets/user4.png',
      description:
          'Great happy and lively place in Bukhara. The center of town. Enjoy monuments, cafes, restaurants, and a nice plaza. Night entertainment is a little noisy with a kind of light show. That part is not historic. But this is a great spot',
    ),
  ];
}
