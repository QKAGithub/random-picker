
import 'dart:math';
import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../../widgets/result_dialog.dart';

class RebornPage extends StatelessWidget { const RebornPage({super.key});
  @override Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('เกิดใหม่')),
      body: Center(child: FilledButton(onPressed: (){ final r = MockData.fantasyReborn[Random().nextInt(MockData.fantasyReborn.length)]; showResultDialog(context, r); }, child: const Text('สุ่ม'))),
    );
  }
}
