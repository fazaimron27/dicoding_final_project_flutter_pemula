import 'package:flutter/material.dart';
import 'package:dicoding_final_project_flutter_pemula/movies.dart';
import 'package:dicoding_final_project_flutter_pemula/series.dart';
import 'package:dicoding_final_project_flutter_pemula/information.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Movies(),
    Series(),
    Information(),
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
        title: const Center(
          child: Text(
            'Movie & TV Shows App',
            style: TextStyle(
              fontFamily: 'Roboto',
            ),
          ),
        ),
        leading: const Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined),
            label: 'Movies',
            activeIcon: Icon(Icons.movie),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv_outlined),
            label: 'TV Shows',
            activeIcon: Icon(Icons.tv),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outlined),
            label: 'Info',
            activeIcon: Icon(Icons.info),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
