import 'package:ebite_menya_semero/Utils/rooms.dart';

class Gost
{
  Gost({required this.id, required this.password, required this.email, required this.name});
  String id = '';
  String name = '';
  String email = '';
  String password = '';
  List<Rooms> room = [];

  static Gost fromJson(json) =>
      Gost(id: json['id'], name: json['name'], email: json['email'], password: json['password']);
}