import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carbon Footprint Report',
      theme: ThemeData(
        fontFamily: 'Times New Roman',
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carbon Footprint Report',
          style: TextStyle(
            color: Colors.green,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          /*Container(
            margin: EdgeInsets.all(16.0),
            child: Text(
              'Welcome to my iOS app!',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),*/
          Expanded(
            child: Image.network(
              'https://raw.githubusercontent.com/sakuraccess/CT30A2803-User-Interfaces-and-Usability/main/report界面.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey[600],
        unselectedItemColor: Colors.grey[600],
        selectedLabelStyle: TextStyle(color: Colors.grey[600]),
        unselectedLabelStyle: TextStyle(color: Colors.grey[600]),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey[600]),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.grey[600]),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description, color: Colors.grey[600]),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey[600]),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
