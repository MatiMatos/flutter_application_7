import 'package:flutter/material.dart';

class TabSurfScreen extends StatefulWidget {
  const TabSurfScreen({super.key});

  @override
  State<TabSurfScreen> createState() => _TabSurfScreenState();
}

class _TabSurfScreenState extends State<TabSurfScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Surf',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
