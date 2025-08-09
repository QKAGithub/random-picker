
import 'dart:math';
import 'package:flutter/material.dart';
import '../../widgets/result_dialog.dart';

class DicePage extends StatefulWidget { const DicePage({super.key}); @override State<DicePage> createState() => _DicePageState(); }

class _DicePageState extends State<DicePage> {
  int _diceCount = 1;
  final _rnd = Random();

  void _roll() {
    final results = List.generate(_diceCount, (_) => _rnd.nextInt(6) + 1);
    showResultDialog(context, results.join(' + '));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('ลูกเต๋า')),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(children:[
        Row(children:[ const Text('จำนวนลูกเต๋า'), Expanded(child: Slider(min:1,max:6,divisions:5,value:_diceCount.toDouble(),onChanged:(v)=>setState(()=>_diceCount=v.toInt()))), Text('$_diceCount') ]),
        const SizedBox(height: 12), FilledButton(onPressed: _roll, child: const Text('ทอย'))
      ])),
    );
  }
}
