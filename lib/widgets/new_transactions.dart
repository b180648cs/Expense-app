import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget
{TextEditingController title_controller=new TextEditingController();
TextEditingController amount_controller=new TextEditingController();
final addtx;
NewTransaction({this.addtx});

void submitData()
{
  if(title_controller.text==null||amount_controller.text==null)
    return;
  else
  addtx(title_controller.text,double.parse(amount_controller.text));

}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: TextField(
            cursorColor: Colors.black,
            controller: title_controller,
            decoration: InputDecoration(

                labelText: "Title",
                labelStyle: TextStyle(color: Colors.grey)
            ),
              onSubmitted:(__)=>submitData
          ),


        ),
        Container(
          width: double.infinity,
          child: TextField(
            controller: amount_controller,
            cursorColor: Colors.black,
            decoration: InputDecoration(
                labelText: "Amount",
                labelStyle: TextStyle(color: Colors.grey)
            ),
            onSubmitted:(__)=>submitData
          ),

        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 160,
          height: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: Colors.grey
          ),
          child: Center(
            child: FlatButton(
              child: Text("Add transcation",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
               onPressed: ()
                {
                  submitData();
                }

            ),
          ),
        ),
      ],
    );
  }

}