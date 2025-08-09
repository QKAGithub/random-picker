
import 'dart:math';
import 'package:flutter/material.dart';
import '../../widgets/result_dialog.dart';

class CardsPage extends StatefulWidget { const CardsPage({super.key}); @override State<CardsPage> createState() => _CardsPageState(); }

class _CardsPageState extends State<CardsPage> {
  final _deck = [for (var s in ['♠','♥','♦','♣']) for (var r in ['A','2','3','4','5','6','7','8','9','10','J','Q','K']) '$r$s'];
  final _rnd = Random();
  final _drawn = <String>[];

  void _draw() {
    if (_drawn.length == _deck.length) _drawn.clear();
    String card;
    do { card = _deck[_rnd.nextInt(_deck.length)]; } while (_drawn.contains(card));
    _drawn.add(card);
    showResultDialog(context, card);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('ไพ่ 52 ใบ')),
      body: Center(child: FilledButton(onPressed: _draw, child: const Text('จั่วไพ่'))),
    );
  }
}
