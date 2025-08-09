
import 'dart:math';
import 'package:flutter/material.dart';
import '../../widgets/result_dialog.dart';
import '../../widgets/primary_button.dart';

class NumbersPage extends StatefulWidget { const NumbersPage({super.key}); @override State<NumbersPage> createState() => _NumbersPageState(); }

class _NumbersPageState extends State<NumbersPage> {
  final _min = TextEditingController(text: '1');
  final _max = TextEditingController(text: '100');
  final _rnd = Random();

  void _roll() {
    final min = int.tryParse(_min.text) ?? 1;
    final max = int.tryParse(_max.text) ?? 100;
    if (max < min) return;
    final n = min + _rnd.nextInt(max - min + 1);
    showResultDialog(context, '$n');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('สุ่มตัวเลข')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Row(children: [
            Expanded(child: TextField(controller: _min, decoration: const InputDecoration(labelText: 'Min'))),
            const SizedBox(width: 12),
            Expanded(child: TextField(controller: _max, decoration: const InputDecoration(labelText: 'Max'))),
          ]),
          const SizedBox(height: 20),
          PrimaryButton(label: 'สุ่ม', onPressed: _roll),
        ]),
      ),
    );
  }
}
