
import 'dart:math';
import 'package:flutter/material.dart';
import '../../widgets/result_dialog.dart';

class CoinPage extends StatelessWidget { const CoinPage({super.key});
  @override Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('โยนเหรียญ')),
      body: Center(child: FilledButton(onPressed: (){ final r = Random().nextBool() ? 'หัว' : 'ก้อย'; showResultDialog(context, r); }, child: const Text('โยน'))),
    );
  }
}
