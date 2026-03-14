import 'package:flutter/material.dart';
import '../views/profile_screen.dart';

class MyAppCau5 extends StatelessWidget {
  const MyAppCau5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cau-5',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}
