import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String avatarUrl;
  final double radius;

  const ProfileAvatar({
    super.key,
    required this.avatarUrl,
    this.radius = 60,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.grey.shade300,
      backgroundImage: NetworkImage(avatarUrl),
      onBackgroundImageError: (_, __) {},
      child: avatarUrl.isEmpty
          ? Icon(Icons.person, size: radius, color: Colors.grey)
          : null,
    );
  }
}