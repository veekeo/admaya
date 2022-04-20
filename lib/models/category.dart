class Category {
  final String title;
  final String icon;
  final int id;

  Category({
    required this.icon,
    required this.title,
    required this.id,
  });
}

List<Category> categories = [
  Category(
    icon: 'assets/svg/makeUp.svg',
    title: 'Make up',
    id: 1,
  ),
  Category(
    icon: 'assets/svg/eyeLashes.svg',
    title: 'Eye-Lashes',
    id: 2,
  ),
  Category(
    icon: 'assets/svg/hairStyling.svg',
    title: 'Hair styling',
    id: 3,
  ),
  Category(
    icon: 'assets/svg/nailArt.svg',
    title: 'Nail art',
    id: 4,
  ),
  Category(
    icon: 'assets/svg/cosmetics.svg',
    title: 'Cosmetics',
    id: 5,
  ),
  Category(
    icon: 'assets/svg/skinCare.svg',
    title: 'Skin care',
    id: 6,
  ),
];
