
import 'dart:math';
import 'package:flutter/material.dart';

class TeamsPage extends StatefulWidget { const TeamsPage({super.key}); @override State<TeamsPage> createState() => _TeamsPageState(); }

class _TeamsPageState extends State<TeamsPage> {
  final _input = TextEditingController();
  final _members = <String>[];
  int _teamCount = 2;

  void _add() {
    final v = _input.text.trim(); if (v.isEmpty) return; setState((){ _members.add(v); _input.clear(); });
  }

  List<List<String>> _splitTeams() {
    final list = List<String>.from(_members)..shuffle(Random());
    final teams = List.generate(_teamCount, (_) => <String>[]);
    for (var i=0; i<list.length; i++) { teams[i % _teamCount].add(list[i]); }
    return teams;
  }

  @override
  Widget build(BuildContext context) {
    final teams = _splitTeams();
    return Scaffold(
      appBar: AppBar(title: const Text('สุ่มทีม')),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(children:[
        Row(children:[Expanded(child: TextField(controller: _input, decoration: const InputDecoration(hintText: 'พิมพ์ชื่อ...'))), const SizedBox(width: 8), IconButton(onPressed: _add, icon: const Icon(Icons.add))]),
        Row(children:[ const Text('จำนวนทีม'), Expanded(child: Slider(min:2,max:6,divisions:4,value:_teamCount.toDouble(), onChanged:(v)=>setState(()=>_teamCount=v.toInt()))), Text('$_teamCount') ]),
        const SizedBox(height: 12), Expanded(child: ListView.builder(itemCount: teams.length, itemBuilder: (_,i)=>Card(child: ListTile(title: Text('ทีม ${i+1}'), subtitle: Text(teams[i].join(', ')))))),
      ])),
    );
  }
}
