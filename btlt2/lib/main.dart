import 'package:flutter/material.dart';
import 'Cau-1/apps/app.dart' as cau1;
import 'Cau-2/apps/app.dart' as cau2;
import 'Cau-3/apps/app.dart' as cau3;
import 'Cau-4/apps/app.dart' as cau4;
import 'Cau-5/apps/app.dart' as cau5;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTLT2',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00695C)),
        useMaterial3: true,
      ),
      home: const HomeMenuScreen(),
    );
  }
}

// ─── Danh sách bài tập ───────────────────────────────────────────────────────

class ExerciseItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final Widget app;

  const ExerciseItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.app,
  });
}

// ─── Home Menu Screen ─────────────────────────────────────────────────────────

class HomeMenuScreen extends StatelessWidget {
  const HomeMenuScreen({super.key});

  List<ExerciseItem> get exercises => [
        ExerciseItem(
          title: 'Câu 1',
          subtitle: 'Bài 1: Trang Hồ Sơ Cá Nhân',
          icon: Icons.looks_one_rounded,
          color: const Color(0xFF26A69A),
          app: const cau1.Cau1App(),
        ),
        ExerciseItem(
          title: 'Câu 2',
          subtitle: 'Bài 2: Danh Sách Món Ăn',
          icon: Icons.restaurant_menu,
          color: const Color(0xFF29B6F6),
          app: const cau2.Cau2App(),
        ),
        ExerciseItem(
          title: 'Câu 3',
          subtitle: 'Bài 3: Trang Tin Tức ',
          icon: Icons.looks_3_rounded,
          color: const Color(0xFFAB47BC),
          app: const cau3.Cau3App(),
        ),
        ExerciseItem(
          title: 'Câu 4',
          subtitle: 'Bài 4: Grid Sản Phẩm ',
          icon: Icons.person,
          color: const Color(0xFFEF5350),
          app: const cau4.Cau4App(),
        ),
        ExerciseItem(
          title: 'Câu 5',
          subtitle: 'Bài 5: Expansion Menu',
          icon: Icons.looks_5_rounded,
          color: const Color(0xFFFF7043),
          app: const cau5.Cau5App(),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF00695C),
        title: const Text(
          'BTLT2 - Bài Tập Lập Trình',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          final item = exercises[index];
          return _ExerciseCard(item: item);
        },
      ),
    );
  }
}

// ─── Exercise Card Widget ─────────────────────────────────────────────────────

class _ExerciseCard extends StatelessWidget {
  final ExerciseItem item;

  const _ExerciseCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => item.app),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Row(
            children: [
              // Icon circle
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: item.color.withOpacity(0.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(item.icon, color: item.color, size: 28),
              ),

              const SizedBox(width: 16),

              // Title + subtitle
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF212121),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.subtitle,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF757575),
                      ),
                    ),
                  ],
                ),
              ),

              // Arrow
              Icon(Icons.arrow_forward_ios_rounded,
                  color: item.color, size: 18),
            ],
          ),
        ),
      ),
    );
  }
}