class Product {
  final int id;
  final String title;
  final String desc;

  Product({required this.id, required this.title, required this.desc});

  factory Product.fromJson(Map<Stirng, dynamic> json) {
    return Product(
        id: json['id'],
        title: json['title'],
        desc: json['desc']
    );
  }
  Map<String, dynamic> toJson() => {
          'id' : id,
          'title' : title,
          'desc' : desc,
  };
}