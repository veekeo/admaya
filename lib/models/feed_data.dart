// @dart=2.9

class FeedData {
  final String coverImage;
  final String name;
  final String price;
  final String time;
  final String reviews;
  final String address;
  final String email;
  final String phoneNumber;
  final Map<String, String> services;
  final List<String> portfolio;

  FeedData({
    this.coverImage,
    this.name,
    this.price,
    this.time,
    this.reviews,
    this.address,
    this.email,
    this.phoneNumber,
    this.services,
    this.portfolio,
  });
}
