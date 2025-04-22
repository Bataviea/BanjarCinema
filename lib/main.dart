import 'package:flutter/material.dart';
import 'colors.dart'; // <-- Import the color palette

void main() {
  runApp(BanjarCinemaApp());
}

class BanjarCinemaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BanjarCinema',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.black,
        primaryColor: AppColors.gold,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.black,
          foregroundColor: AppColors.gold,
          elevation: 0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.buttonBlack,
          selectedItemColor: AppColors.gold,
          unselectedItemColor: AppColors.grey,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: AppColors.softWhite),
        ),
        dropdownMenuTheme: DropdownMenuThemeData(
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: AppColors.buttonBlack,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.softWhite),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    BerandaPage(),
    TiketPage(),
    AkunPage(),
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
        title: Text('BanjarCinema'),
        centerTitle: true,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Tiket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class BerandaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Beranda',
        style: TextStyle(color: AppColors.softWhite, fontSize: 18),
      ),
    );
  }
}

class TiketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Tiket',
        style: TextStyle(color: AppColors.softWhite, fontSize: 18),
      ),
    );
  }
}

class AkunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Halaman Akun',
        style: TextStyle(color: AppColors.softWhite, fontSize: 18),
      ),
    );
  }
}
