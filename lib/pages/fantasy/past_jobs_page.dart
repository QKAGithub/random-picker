
import 'dart:math';
import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../../widgets/result_dialog.dart';

class PastJobsPage extends StatelessWidget { const PastJobsPage({super.key});
  @override Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('อาชีพในอดีต')),
      body: Center(child: FilledButton(onPressed: (){ final r = MockData.fantasyPastJobs[Random().nextInt(MockData.fantasyPastJobs.length)]; showResultDialog(context, r); }, child: const Text('สุ่ม'))),
    );
  }
}
