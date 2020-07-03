import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'models/transaction.dart';
import 'widgets/new_transactions.dart';
import 'widgets/transaction_list.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: My_app(),
  ));
}

class My_app extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Myapp();
  }
}

class Myapp extends State<My_app> {
  TextEditingController title_controller = new TextEditingController();
  TextEditingController amount_controller = new TextEditingController();

    List<Adityajha> ts = [
    Adityajha(id: "1", title: "yellow", amount: 24, dateTime: DateTime.now()),
    Adityajha(id: "1", title: "yellow", amount: 24, dateTime: DateTime.now()),
    Adityajha(id: "1", title: "yellow", amount: 24, dateTime: DateTime.now())
  ];

  void add_usertx(String text, double amount) {
    final newtx = Adityajha(
        id: DateTime.now().toString(),
        dateTime: DateTime.now(),
        title: text,
        amount: amount);
    setState(() {
      ts.add(newtx);
    });
  }

  void startaddTransaction() {
    showModalBottomSheet(
        context: context,
        builder: (__) {
          return NewTransaction(addtx: add_usertx);
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                startaddTransaction();
              })
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            child: Card(
              child: Text("Chart"),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          Home(ts)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          startaddTransaction();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
