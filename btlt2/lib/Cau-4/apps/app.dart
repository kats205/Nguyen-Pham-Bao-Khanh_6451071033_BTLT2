import 'package:flutter/material.dart';
import '../views/profile_screen.dart';

class MyAppCau4 extends StatelessWidget {
  const MyAppCau4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cau-4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}
