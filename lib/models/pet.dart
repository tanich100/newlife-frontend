class Pet {
  final String id;
  final String name;
  final String imageUrl;
  final String category;
  final String description; // Added description for detail page

  Pet({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.description,
  });
}
