import 'package:flutter/material.dart';
import 'package:flutter_dialog/packages_screen.dart';
import 'package:flutter_dialog/color_loader_screen.dart';
import 'package:flutter_dialog/spinkit_screen.dart';
import 'package:flutter_dialog/third_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    SpinKitScreen(),
    ThirdScreen(),
    ColorLoaderScreen(),
    PackagesScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter dialog'),
      ),
      drawer: _drawer(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('2nd'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('3rd'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Flutter dialog'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Packages'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PackagesScreen()),
              );
            },
          ),
//          ListTile(
//            title: Text('Item 2'),
//            onTap: () {
//              // Update the state of the app
//              // ...
//              // Then close the drawer
//              Navigator.pop(context);
//            },
//          ),
        ],
      ),
    );
  }
}
