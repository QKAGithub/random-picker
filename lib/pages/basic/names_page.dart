
import 'dart:math';
import 'package:flutter/material.dart';
import '../../widgets/result_dialog.dart';

class NamesPage extends StatefulWidget { const NamesPage({super.key}); @override State<NamesPage> createState() => _NamesPageState(); }

class _NamesPageState extends State<NamesPage> {
  final _input = TextEditingController();
  final _list = <String>[];
  final _rnd = Random();

  void _add() {
    final v = _input.text.trim();
    if (v.isEmpty) return; setState((){ _list.add(v); _input.clear(); });
  }

  void _pick() {
    if (_list.isEmpty) return; final r = _list[_rnd.nextInt(_list.length)];
    showResultDialog(context, r);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('สุ่มรายชื่อ')),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(children:[
        Row(children:[Expanded(child: TextField(controller: _input, decoration: const InputDecoration(hintText: 'พิมพ์ชื่อ...'))), const SizedBox(width: 8), IconButton(onPressed: _add, icon: const Icon(Icons.add))]),
        const SizedBox(height: 12), Expanded(child: ListView.builder(itemCount: _list.length, itemBuilder: (_,i)=>ListTile(title: Text(_list[i])))),
        FilledButton(onPressed: _pick, child: const Text('สุ่ม'))
      ])),
    );
  }
}
