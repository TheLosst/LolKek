import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/Gosts.dart';
import '../Utils/rooms.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'displayList.dart';
import 'globals.dart';

class ListOfG extends StatefulWidget {
  const ListOfG({Key? key}) : super(key: key);

  @override
  State<ListOfG> createState() => _ListOfGState();
}

class _ListOfGState extends State<ListOfG> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guests',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListOfGPage(),
    );
  }
}

class ListOfGPage extends StatelessWidget {
  const ListOfGPage({Key? key}) : super(key: key);

  Future<List<Rooms>> getRooms() async {
    final response = await http.get(Uri.parse(' ')); //todo ссылка куды стучать
    if (response.statusCode == 200) {
      var buff = json.decode(response.body);
      print(buff);
      return buff.map<Rooms>(Rooms.fromJson).toList();
    } else {
      throw Exception('Все сломалось!');
    }
  }

  Future<List<Gost>> getUserInfo() async {
    final response = await http.get(Uri.parse(' ')); //todo ссылка куды стучать
    if (response.statusCode == 200) {
      var buff = json.decode(response.body);
      print(buff);
      tempRooms = await getRooms();
      return buff.map<Gost>(Gost.fromJson).toList();
    } else {
      throw Exception('Все сломалось!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Мохнатые гостиницы"),
      ),
      body: FutureBuilder<List<Gost>?>(
          future: getUserInfo(),
          builder: (BuildContext context, AsyncSnapshot<List<Gost>?> snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                  itemCount: snapshot.data?.length as int,
                  itemBuilder: (BuildContext context, int index) =>
                      displayList(snapshot.data?[index], context, index));
            } else {
              return const Center(
                child: Icon(Icons.accessible),
              );
            }
          }),
    );
  }
}
