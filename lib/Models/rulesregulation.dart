class RuleItem {
  final String title;
  final String description; // Remove the type definition

  RuleItem({
    required this.title,
    required this.description,
  });

  factory RuleItem.fromJson(Map<String, dynamic> json) {
    return RuleItem(
      title: json['title'] as String,
      description: json['description'] as String,
    );
  }
}
