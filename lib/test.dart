import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: new MyHomePage(
        title: 'Flutter Demo Home Page'
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _LoginData {
  String email = '';
  String password = '';
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _email = "";
  String _password = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == 4){
        print("Over 4");
      } else {
        print("Still Good");
      }
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  void _handleLogin(){
    
    print(this._email);
    print(this._password);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: new AppBar(
      title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                initialValue: _email,
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail Address'
                ),
                onSaved: (String value) {
                  this._email = value;
                },
              ),
              new TextFormField(
                obscureText: true, // Use secure text for passwords.
                initialValue: _password,
                decoration: new InputDecoration(
                  hintText: 'Password',
                  labelText: 'Enter your password'
                ),
                onSaved: (String value) {
                  this._email = value;
                },
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(top: 8.0),
                      child:  new RaisedButton(
                        child: new Text("Login"),
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        onPressed: () {
                          print("Login Clicked");
                        }
                      ),
                    ),
                ],
              ),
              new Container(
                child: new FlatButton(
                  child: const Text("Create Account"),
                  textColor: Theme.of(context).accentColor,
                  onPressed: () {
                    _handleLogin();
                  },
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}