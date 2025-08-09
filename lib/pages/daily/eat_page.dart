
import 'dart:math';
import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../../widgets/result_dialog.dart';

class EatPage extends StatefulWidget { const EatPage({super.key}); @override State<EatPage> createState() => _EatPageState(); }

class _EatPageState extends State<EatPage> {
  final _list = [...MockData.foods];
  final _input = TextEditingController();

  void _add() { final v = _input.text.trim(); if (v.isEmpty) return; setState((){ _list.add(v); _input.clear(); }); }
  void _pick() { if (_list.isEmpty) return; final r = _list[Random().nextInt(_list.length)]; showResultDialog(context, r); }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('กินอะไรดี')),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(children:[
        Row(children:[Expanded(child: TextField(controller: _input, decoration: const InputDecoration(hintText: 'เพิ่มเมนู...'))), const SizedBox(width: 8), IconButton(onPressed: _add, icon: const Icon(Icons.add))]),
        const SizedBox(height: 12), Expanded(child: ListView.builder(itemCount: _list.length, itemBuilder: (_,i)=>ListTile(title: Text(_list[i])))),
        FilledButton(onPressed: _pick, child: const Text('สุ่ม'))
      ])),
    );
  }
}
