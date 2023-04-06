import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My iOS App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Text('My iOS App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16.0),
            child: Text(
              'Welcome to my iOS app!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded( 
            child: Image.network(
              'https://raw.githubusercontent.com/sakuraccess/CT30A2803-User-Interfaces-and-Usability/main/report界面.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
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
