import 'package:flutter/material.dart';

import 'signup.dart';

class MyForgotPage extends StatefulWidget {
  MyForgotPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyForgotPageState createState() => _MyForgotPageState();
}

class _MyForgotPageState extends State<MyForgotPage> {
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
            alignment: Alignment.center,
            child: ListTile(
              title: Text(
                'Forgot Password?',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Kindly enter your email address for password reset instructions.',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(color: Colors.white),
              ),
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
                      'SUBMIT PASSWORD REQUEST',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MySignupPage()));
                  },
                  child: Text('Don\'t have an account yet? sign up'),
                )
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
