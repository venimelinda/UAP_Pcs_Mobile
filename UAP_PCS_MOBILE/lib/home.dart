import 'package:flutter/material.dart';
import 'listsiswa.dart';
import 'daftarsiswa.dart';
import 'main.dart';
import 'profil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItemIndex = 0;
  final List pages = [
    DaftarSiswa(),
    ListSiswa(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Color(0xFF80CBC4),
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.blueGrey[600]),
            currentIndex: _selectedItemIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              setState(() {
                _selectedItemIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.school_outlined),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.list),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.person),
              ),
            ],
          ),
          body: pages[_selectedItemIndex]),
    );
  }
}
