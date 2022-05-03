class FeedData {
  final String coverImage;
  final String name;
  final String price;
  final String time;
  final String reviews;
  final String address;
  final List<String> category;
  final List<String> serviceTitle;
  final List<String> serviceItem;
  final String serviceItemDetails;

  FeedData({
    required this.coverImage,
    required this.name,
    required this.price,
    required this.time,
    required this.reviews,
    required this.address,
    required this.category,
    required this.serviceTitle,
    required this.serviceItemDetails,
    required this.serviceItem,
  });
}
