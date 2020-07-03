import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';




class Home extends StatelessWidget {
  final List<Adityajha>ts;

  Home(this.ts);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      child: ListView(
        children: ts.map((e) {
          return Card(
              child: Row(
            children: <Widget>[
              Container(
                child: Text(
                  "\$${e.amount}",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.purple, width: 2, style: BorderStyle.solid),
                ),
                padding: EdgeInsets.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    e.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat().format(e.dateTime),
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ));
        }).toList(),
      ),
    );
  }
}
