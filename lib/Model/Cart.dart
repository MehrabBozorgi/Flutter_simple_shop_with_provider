class Cart {
  final int id;
  final String Owner;
  final List order;
  final bool is_payed;

  Cart({
    this.id,
    this.Owner,
    this.order,
    this.is_payed,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      Owner: json['Owner'],
      order: json['order'],
      is_payed: json['is_payed'],
    );
  }
}
