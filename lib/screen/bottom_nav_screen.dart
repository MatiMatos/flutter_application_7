import 'package:flutter/material.dart';
import 'package:flutter_application_7/screen/tab_home_screen.dart';
import 'package:flutter_application_7/screen/tab_rocket_screen.dart';
import 'package:flutter_application_7/screen/tab_surf_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  List<Widget> _paginas = [TabHomeScreen(), TabRocketScreen(), TabSurfScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom nav'),
      ),
      body: _paginas[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(MdiIcons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(MdiIcons.rocket), label: 'Rocket'),
          BottomNavigationBarItem(icon: Icon(MdiIcons.surfing), label: 'Surf')
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
