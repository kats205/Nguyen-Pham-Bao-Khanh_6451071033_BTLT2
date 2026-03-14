import 'package:flutter/material.dart';
import '../views/profile_screen.dart';

class MyAppCau3 extends StatelessWidget {
  const MyAppCau3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cau-3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}
