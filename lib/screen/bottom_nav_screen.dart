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
  //List<Widget>
  List _paginas = [
    {
      'pagina': TabHomeScreen(),
      'texto': 'Home',
      'color': 0xff0dcaf6,
      'icono': MdiIcons.home
    },
    {
      'pagina': TabRocketScreen(),
      'texto': 'Rocket',
      'color': 0xff0b657a,
      'icono': MdiIcons.rocket
    },
    {
      'pagina': TabSurfScreen(),
      'texto': 'Surf',
      'color': 0xff4a8694,
      'icono': MdiIcons.surfing
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_paginas[_currentIndex]['texto']),
        backgroundColor: Color(_paginas[_currentIndex]['color']),
      ),
      body: _paginas[_currentIndex]['pagina'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: _paginas.map((p) {
          return BottomNavigationBarItem(
              icon: Icon(p['icono']),
              label: p['texto'],
              backgroundColor: Color(p['color']));
        }).toList(),
        //[
        //   BottomNavigationBarItem(
        //       icon: Icon(_paginas[0]['icono']),
        //       label: _paginas[0]['texto'],
        //       backgroundColor: Color(_paginas[0]['color'])),
        //   BottomNavigationBarItem(
        //       icon: Icon(_paginas[1]['icono']),
        //       label: _paginas[1]['texto'],
        //       backgroundColor: Color(_paginas[1]['color'])),
        //   BottomNavigationBarItem(
        //       icon: Icon(_paginas[2]['icono']),
        //       label: _paginas[2]['texto'],
        //       backgroundColor: Color(_paginas[2]['color']))
        // ],
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
