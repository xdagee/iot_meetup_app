import 'package:flutter/material.dart';

import 'login.dart';

class MySignupPage extends StatefulWidget {
  MySignupPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MySignupPageState createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 256,
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.add_a_photo,
              size: 56.0,
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Email',
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Country',
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Chapter',
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                SizedBox(
                  width: 355,
                  height: 50,
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    onPressed: () {},
                    child: Text(
                      'REGISTER',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MyLoginPage()));
                  },
                  child: Text('Have account? login'),
                )
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
