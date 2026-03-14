import 'package:flutter/material.dart';
import '../views/profile_screen.dart';

class MyAppCau2 extends StatelessWidget {
  const MyAppCau2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cau-2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}
