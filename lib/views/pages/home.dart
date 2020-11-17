import 'package:flutter/material.dart';
import 'package:inap/utils/styles.dart';
import 'package:inap/views/pages/home/halaman_utama.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _children = [
    HalamanUtamaPage(),
    HalamanUtamaPage(),
    HalamanUtamaPage(),
    HalamanUtamaPage(),
    HalamanUtamaPage(),
  ];
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.appPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
        child: _children[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        selectedItemColor: Styles.accentPurple,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Styles.appSecondaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: "Laman Utama",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.event_note),
            label: "Analisis",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.add),
            label: "Mulai Tidur",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.music_note),
            label: "Music",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
