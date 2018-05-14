import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:map_view/map_view.dart';
import 'dart:async';
// Pages
import 'chat.dart';


final apiKey = "AIzaSyCdq6HIoPwCkOjp2oo-xEgt4DQYmRT90qo";

class MapPage extends StatelessWidget {

var currentLocation = <String, double>{};
var _mapView = new MapView();
//var location = new Location();
CameraPosition cameraPosition;
//var compositeSubscription = new CompositeSubscription();
var staticMapProvider = new StaticMapProvider(apiKey);
final double _longitude = -105.270546;
final double _latitude = 40.014984;

void _goBack(){
  print("Going Back!");
}
final staticMapUri = "https://maps.googleapis.com/maps/api/staticmap?center=${this._latitude},${this._longitude}&zoom=10&size=400x400&key=${apiKey}";

@override
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Map"),
        backgroundColor: Theme.of(context).accentColor,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back_ios),
          onPressed: (){
           _goBack();
           Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.message),
            onPressed: () {
             Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new ChatPage()));
            },
          )
        ],
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            height: 300.0,
            width: 375.0,
            child: new Stack(
              children: <Widget>[
                new Center(
                        child: new Container(
                      child: new Text(
                        "You are supposed to see a map here.\n\nAPI Key is not valid.\n\n"
                            "To view maps in the example application set the "
                            "API_KEY variable in example/lib/main.dart. "
                            "\n\nIf you have set an API Key but you still see this text "
                            "make sure you have enabled all of the correct APIs "
                            "in the Google API Console. See README for more detail.",
                        textAlign: TextAlign.center,
                      ),
                      padding: const EdgeInsets.all(20.0),
                    )),
                    new InkWell(
                      child: new Center(
                        child: new Image.network(staticMapUri, width: 375.0,),
                      ),
                      onTap: showMap,
                    )
              ],
            ),
          )
        ],
      )
    ),
  );
}
}

showMap(){
  print("Testing the on press Method");
}