class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/riu.jpg',
    name: 'RIU Hotel',
    address: '119 Runaway Bay, St. Ann',
    price: 175,
  ),
  Hotel(
    imageUrl: 'assets/images/bridgepalm.jpg',
    name: 'Bridge Palm Hotel',
    address: '226 Toll Gate Road',
    price: 90,
  ),
  Hotel(
    imageUrl: 'assets/images/rhotel.jpg',
    name: 'R Hotel',
    address: '21 Grenada Drive',
    price: 123,
  ),
];