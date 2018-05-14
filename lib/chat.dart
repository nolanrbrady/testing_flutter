import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {

final data = ["John Doe", "Jack Johnson", "Travis Brown", "Jesse Randolph"];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text("Your Chats"),
          backgroundColor: Theme.of(context).accentColor,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Testing the Chat Page"),
            ],
          ),
        )
      ),
    );
  }
}