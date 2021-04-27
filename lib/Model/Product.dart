class Product {
  final int id;
  final int albumId;
  final String title;
  final String url;
  final String thumbnailUrl;

  Product({
    this.id,
    this.albumId,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      albumId: json['albumId'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
