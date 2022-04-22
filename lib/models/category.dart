class Category {
  final String title;
  final String icon;
  final int id;

  Category(
    this.icon,
    this.title,
    this.id,
  );
}

List<Category> categories = [
  Category(
    '',
    'All',
    0,
  ),
  Category(
    'assets/svg/makeUp.svg',
    'Make up',
    1,
  ),
  Category(
    'assets/svg/eyeLashes.svg',
    'Eyebrows & lashes',
    2,
  ),
  Category(
    'assets/svg/hairStyling.svg',
    'Hair styling',
    3,
  ),
  Category(
    'assets/svg/nailArt.svg',
    'Nail art',
    4,
  ),
  Category(
    'assets/svg/cosmetics.svg',
    'Cosmetics',
    5,
  ),
  Category(
    'assets/svg/skinCare.svg',
    'Skin care',
    6,
  ),
];
