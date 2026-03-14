import 'package:flutter/material.dart';
import 'Cau-1/apps/app.dart' as cau1;
import 'Cau-2/apps/app.dart' as cau2;
import 'Cau-3/apps/app.dart' as cau3;
import 'Cau-4/apps/app.dart' as cau4;
import 'Cau-5/apps/app.dart' as cau5;

void main() {
  runApp(const MainApp());
}

// void main() => cau1.main();
// void main() => cau2.main();
// void main() => cau3.main();
// void main() => cau4.main();
// void main() => cau5.main();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTLT2 Exercises',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BTLT2 Exercises'),
        centerTitle: true,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildExerciseCard(context, 'Câu 1', const cau1.MyAppCau1()),
            _buildExerciseCard(context, 'Câu 2', const cau2.MyAppCau2()),
            _buildExerciseCard(context, 'Câu 3', const cau3.MyAppCau3()),
            _buildExerciseCard(context, 'Câu 4', const cau4.MyAppCau4()),
            _buildExerciseCard(context, 'Câu 5', const cau5.MyAppCau5()),
          ],
        ),
      ),
    );
  }

  Widget _buildExerciseCard(BuildContext context, String title, Widget app) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => app),
        ),
      ),
    );
  }
}
