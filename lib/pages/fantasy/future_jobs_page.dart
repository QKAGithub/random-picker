
import 'dart:math';
import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../../widgets/result_dialog.dart';

class FutureJobsPage extends StatelessWidget { const FutureJobsPage({super.key});
  @override Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('อาชีพในอนาคต')),
      body: Center(child: FilledButton(onPressed: (){ final r = MockData.fantasyFutureJobs[Random().nextInt(MockData.fantasyFutureJobs.length)]; showResultDialog(context, r); }, child: const Text('สุ่ม'))),
    );
  }
}
