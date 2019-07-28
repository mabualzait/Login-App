import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController _usernameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  String _welcome = "Malik";

  void _clear() {
    setState(() {
      _usernameController.clear();
      _passwordController.clear();
    });
  }

  void _submit() {
    setState(() {
      if (_usernameController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        _welcome = _usernameController.text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login App"),
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.white,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
              'images/logo.png',
              width: 90.0,
              height: 90.0,
            ),
            new Container(
              height: 180,
              width: 380,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _usernameController,
                    decoration: new InputDecoration(
                        hintText: 'Username', icon: new Icon(Icons.person)),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                        hintText: 'Password', icon: new Icon(Icons.lock)),
                    obscureText: true,
                  ),
                  new Padding(padding: new EdgeInsets.all(20.0)),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                            margin: const EdgeInsets.only(left: 37.0),
                            child: new RaisedButton(
                              onPressed: _submit,
                              child: new Text(
                                "Submit",
                                style: new TextStyle(
                                    color: Colors.white, fontSize: 20.5),
                              ),
                              color: Colors.redAccent,
                            )),
                        new Container(
                            margin: const EdgeInsets.only(left: 127.0),
                            child: new RaisedButton(
                              onPressed: _clear,
                              child: new Text(
                                "Clear",
                                style: new TextStyle(
                                    color: Colors.white, fontSize: 20.5),
                              ),
                              color: Colors.redAccent,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              alignment: Alignment.center,
              child: new Text(
                'Welcome, $_welcome',
                style: new TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
