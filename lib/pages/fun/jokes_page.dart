
import 'dart:math';
import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../../widgets/result_dialog.dart';

class JokesPage extends StatelessWidget { const JokesPage({super.key});
  @override Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('มุก/คำคม')),
      body: Center(child: FilledButton(onPressed: (){ final r = MockData.jokes[Random().nextInt(MockData.jokes.length)]; showResultDialog(context, r); }, child: const Text('สุ่ม'))),
    );
  }
}
