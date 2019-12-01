import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IoT Meetup App'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.tag_faces,
              size: 56.0,
            ),
            Text(
              'Akwaaba',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline,
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.tag_faces,
                size: 56.0,
                color: Colors.white,
              ),
              accountName: Text('IoT Network Hub'),
              accountEmail: Text('IoTNetworkHub@gmail.com'),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('images/wallpaper.png'),
                ),
              ),
            )
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
