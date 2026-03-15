import 'package:flutter/material.dart';
import '../views/expansion_menu_screen.dart';

class Cau5App extends StatelessWidget {
  const Cau5App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Expansion Menu',
      debugShowCheckedModeBanner: false,
      home: ExpansionMenuScreen(),
    );
  }
}