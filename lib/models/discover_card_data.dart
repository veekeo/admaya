class DiscoverCardData {
  final String coverImage;
  final String name;
  final String price;
  final String time;
  final String reviews;
  final String address;
  final List<String> category;

  DiscoverCardData(
      {required this.coverImage,
      required this.name,
      required this.price,
      required this.time,
      required this.reviews,
      required this.address,
      required this.category});
}
