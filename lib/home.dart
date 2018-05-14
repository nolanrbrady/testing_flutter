import 'package:flutter/material.dart';
import 'map.dart';
import 'chat.dart';


class HomePage extends StatelessWidget {

void _toMap(){
  print("Send me to the map!!");
}

void _toChat(){
  print("Send me to the Chat!!");
}

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      child: Center(
                        child: Image.network(
                          "https://s21.q4cdn.com/896225004/files/images/photos/person-placeholder.png", 
                          height: 100.0, 
                          width: 100.0,
                          alignment: Alignment.bottomCenter,
                          )
                        ),
                      width: 375.0,
                      height: 200.0,
                      decoration: new BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(
                        child: new Text("To Map"),
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        onPressed: () {
                          _toMap();
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => new MapPage()));
                        },
                      ),
                    new RaisedButton(
                      child: new Text("To Chat"),
                      color: Theme.of(context).accentColor,
                      textColor: Colors.white,
                      onPressed: (){
                        _toChat();
                        Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => new ChatPage()));
                      },
                    ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("John Doe"),
                    Text("Boulder, CO"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}