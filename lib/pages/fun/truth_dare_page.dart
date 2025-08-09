
import 'dart:math';
import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../../widgets/result_dialog.dart';

class TruthDarePage extends StatefulWidget { const TruthDarePage({super.key}); @override State<TruthDarePage> createState() => _TruthDarePageState(); }

class _TruthDarePageState extends State<TruthDarePage> {
  String _mode = 'truth';

  void _pick() {
    final list = _mode == 'truth' ? MockData.truths : MockData.dares;
    final r = list[Random().nextInt(list.length)];
    showResultDialog(context, r);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Truth or Dare')),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(children:[
        SegmentedButton<String>(
          segments: const [ButtonSegment(value: 'truth', label: Text('Truth')), ButtonSegment(value: 'dare', label: Text('Dare'))],
          selected: {_mode}, onSelectionChanged: (s)=>setState(()=>_mode=s.first),
        ),
        const SizedBox(height: 16),
        FilledButton(onPressed: _pick, child: const Text('สุ่ม'))
      ])),
    );
  }
}
