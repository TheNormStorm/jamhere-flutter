import 'package:jamhere/models/activity.dart';

class Destination {
  String imageUrl;
  String name;
  String parish;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.name,
    this.parish,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/boat.jpg',
    name: 'Javis and Friends',
    type: 'Boating Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 1500,
  ),
  Activity(
    imageUrl: 'assets/images/tour.jpg',
    name: 'Tahid/s Tours',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 am', '1:00 pm'],
    rating: 4,
    price: 2500,
  ),
  Activity(
    imageUrl: 'assets/images/tour2.jpg',
    name: 'Krazziness Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 1250,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/cay.jpg',
    name: 'Lime Cays',
    parish: 'Kingston',
    description: 'Lime Cay provides tourists and local residents with a beautiful taste of our blues seas.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/gordon.jpg',
    name: 'Gordon Falls',
    parish: 'Kingston',
    description: 'Swimmers and water lovers will delight in this low difficulty, three-hour trail.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/salt.jpg',
    name: 'Salt River',
    parish: 'Clarendon',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/rockfort.png',
    name: 'Rockfort',
    parish: 'Kingston',
    description: 'Therapeutic mineral-rich water at the Rockfort Mineral Bath in Kingston',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/blue.jpg',
    name: 'Blue Hole',
    parish: 'St. Ann',
    description: 'Ocho Rios Jamaica\s Hidden Secret Hidden up in the mountains above bustlingly touristy Ocho Rios.',
    activities: activities,
  ),
];