import 'dart:io';

import 'package:flutter/material.dart';

/*command section of this project :
1)for geting edittext value and set buuton onclick
 also set velue on text we need to use statefullwidget class

2)for StatefulWidget we need to create 2 class
 1) one is a child of StatefulWidget
 2)otherone is child of state class

3)for get Appbar Body Nav Bar we use Templete name Scaffold

4) now here is our Body widget :
  1)TextFormField for edittext
  2)TextEditingController for getting enter text data
  3)KeyBoardType : TextInputType.many type is here


 */

void main(){
  runApp(new MyWidget());
}

class MyWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }
}

class MyState extends State{
  TextEditingController textEditingController = new TextEditingController();
  String msg = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: new Scaffold(

        appBar: new AppBar(
          title: new Text("UI Example",
          style: new TextStyle(fontWeight: FontWeight.bold,
          fontSize: 30.0),
          textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.purple,
        ),

        body: new Center(
          child: new Form(child: new Column(
            children: <Widget>[
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  hintText: "Enter Your message"

                ),
                controller: textEditingController,
                keyboardType: TextInputType.text,
              ),
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new RaisedButton(onPressed: (){
                //onclick event logic
                msg = textEditingController.text;
                setState(() {
                  
                });


              },
                color: Colors.purple,
              child: new Text("Button",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white
                ),
              ),
              ),

              //label where text is set
              new Padding(padding: EdgeInsets.only(top: 15.0)),
              new Text("$msg",
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.purple
                ),

              )



            ],

            
          )
              
          ),
          
        ),
        
        
        floatingActionButton: new FloatingActionButton(onPressed: (){
          //logic for exiting from your app

          
        },
        child: new Icon(Icons.exit_to_app),
        backgroundColor: Colors.purple,),


      ),
    );
  }

}