import 'package:ebite_menya_semero/Modules/globals.dart';
import 'package:ebite_menya_semero/Utils/Gosts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget displayList(Gost? gost, context, int index)
{
  return Card(
    child: Container(
      width: 75,
      height: 150,
      child: Row(
        children: [
          Text(tempRooms.elementAt(index).title),
          Text(tempRooms.elementAt(index).price),
          ElevatedButton(onPressed: (){}, child: Text("Забронировать"))
        ],
      ),
    ),
  );
}