class Rooms
{
  Rooms({required this.id, required this.description, required this.price, required this.title});
  String id = "";
  String title = "";
  String description = "";
  String price = "";

  static Rooms fromJson(json) =>
      Rooms(id: json['id'], description: json['description'], price: json['price'], title: json['title']);
}