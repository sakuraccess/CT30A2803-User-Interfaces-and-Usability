import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carbon Footprint Report',
      theme: ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(
            fontFamily: 'Times New Roman',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.green,
            fontStyle: FontStyle.italic,
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
        leading: IconButton(
          icon: Icon(Icons.settings, color: Colors.grey[600]),
          onPressed: () {},
        ),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search),
          ),
        ),
        actions: [
          Align(
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(Icons.mail, color: Colors.grey[600]),
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.network(
                'https://raw.githubusercontent.com/sakuraccess/CT30A2803-User-Interfaces-and-Usability/main/report_card.png',
                width: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.network(
                'https://raw.githubusercontent.com/sakuraccess/CT30A2803-User-Interfaces-and-Usability/main/main-page-body2.png',
                width: MediaQuery.of(context).size.width * 1.4,
                fit: BoxFit.scaleDown,
              ),
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
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stream),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}
