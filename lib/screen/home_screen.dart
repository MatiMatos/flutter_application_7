import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_7/screen/tab_home_screen.dart';
import 'package:flutter_application_7/screen/tab_rocket_screen.dart';
import 'package:flutter_application_7/screen/tab_surf_screen.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TABS", style: TextStyle(fontSize: 30)),

            ///titleTextStyle: TextStyle(color: Colors.blueGrey),
            foregroundColor: Colors.white,
            backgroundColor: Color(0xff03a4c9),
            bottom: TabBar(
              indicatorColor: Colors.lightBlueAccent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Home',
                  icon: Icon(MdiIcons.home),
                ),
                Tab(
                  text: 'Rocket',
                  icon: Icon(MdiIcons.rocket),
                ),
                Tab(
                  text: 'Surf',
                  icon: Icon(MdiIcons.surfing),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [TabHomeScreen(), TabRocketScreen(), TabSurfScreen()],
          ),
        ),
      ),
    );
  }
}
