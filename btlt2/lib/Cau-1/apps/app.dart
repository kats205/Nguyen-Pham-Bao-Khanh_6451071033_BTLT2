import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../views/profile_screen.dart';

class Cau1App extends StatelessWidget {
  const Cau1App({super.key});

  @override
  Widget build(BuildContext context) {
    final user = UserModel(
      name: 'Nguyen Lan Huong',
      email: 'lanhuong.nguyen@example.com',
      avatarUrl: 'https://i.pravatar.cc/300?img=47',
    );

    return MaterialApp(
      title: 'Profile App',
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(user: user),
    );
  }
}