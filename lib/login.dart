import "package:flutter/material.dart";
import 'package:random_words/random_words.dart';
import 'home.dart';

class _LoginData {
  String _email = "";
  String _password = "";
}

class LoginPage extends StatelessWidget {
final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _LoginData data = new _LoginData();

  void submit(){
    print("Email: " + data._email);
    print("Password: " + data._password);
  }

  void _newAccount(){
    print("Testing the new account button");

    }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final noun =  new WordNoun.random();
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Location Chat"),
          backgroundColor: Theme.of(context).accentColor,
        ),
        body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    hintText: "Email",
                    labelText: "Your Email",
                  ),
                  onChanged: (String value){
                    data._email = value;
                  },
                ),
                new TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: new InputDecoration(
                    hintText: "Password",
                    labelText: "Your Password"
                  ),
                  onChanged: (String value){
                    data._password = value;
                  },
                ),
                new Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new RaisedButton(
                        child: new Text("Submit"),
                        color: Theme.of(context).accentColor,
                        onPressed: () {
                          submit();
                          Navigator.push(
                            context,
                            new MaterialPageRoute(builder: (context) => new HomePage()));
                        },
                      ),
                      new FlatButton(
                        child: new Text("Create an Account"),
                        onPressed: () {
                         _newAccount();
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}