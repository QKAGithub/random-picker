
import 'package:flutter/material.dart';
import '../models/random_category.dart';
import '../widgets/category_grid.dart';
import 'basic/numbers_page.dart';
import 'basic/names_page.dart';
import 'basic/teams_page.dart';
import 'basic/coin_page.dart';
import 'basic/dice_page.dart';
import 'basic/cards_page.dart';
import 'daily/eat_page.dart';
import 'daily/nearby_page.dart';
import 'fun/truth_dare_page.dart';
import 'fun/jokes_page.dart';
import 'fantasy/reborn_page.dart';
import 'fantasy/past_jobs_page.dart';
import 'fantasy/future_jobs_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <RandomCategory>[
      RandomCategory(key: 'num', title: 'สุ่มตัวเลข', icon: Icons.onetwothree, group: CategoryGroup.basic, pageBuilder: (_) => const NumbersPage()),
      RandomCategory(key: 'names', title: 'สุ่มรายชื่อ', icon: Icons.list_alt, group: CategoryGroup.basic, pageBuilder: (_) => const NamesPage()),
      RandomCategory(key: 'teams', title: 'สุ่มทีม', icon: Icons.groups, group: CategoryGroup.basic, pageBuilder: (_) => const TeamsPage()),
      RandomCategory(key: 'coin', title: 'โยนเหรียญ', icon: Icons.monetization_on_outlined, group: CategoryGroup.basic, pageBuilder: (_) => const CoinPage()),
      RandomCategory(key: 'dice', title: 'ลูกเต๋า', icon: Icons.casino, group: CategoryGroup.basic, pageBuilder: (_) => const DicePage()),
      RandomCategory(key: 'cards', title: 'ไพ่', icon: Icons.style, group: CategoryGroup.basic, pageBuilder: (_) => const CardsPage()),

      RandomCategory(key: 'eat', title: 'กินอะไรดี', icon: Icons.restaurant, group: CategoryGroup.daily, pageBuilder: (_) => const EatPage()),
      RandomCategory(key: 'nearby', title: 'สถานที่ใกล้ตัว', icon: Icons.place, group: CategoryGroup.daily, pageBuilder: (_) => const NearbyPage()),

      RandomCategory(key: 'truth', title: 'Truth or Dare', icon: Icons.question_answer, group: CategoryGroup.fun, pageBuilder: (_) => const TruthDarePage()),
      RandomCategory(key: 'jokes', title: 'มุก/คำคม', icon: Icons.emoji_emotions, group: CategoryGroup.fun, pageBuilder: (_) => const JokesPage()),

      RandomCategory(key: 'reborn', title: 'เกิดใหม่', icon: Icons.auto_awesome, group: CategoryGroup.fantasy, pageBuilder: (_) => const RebornPage()),
      RandomCategory(key: 'past', title: 'อาชีพในอดีต', icon: Icons.history, group: CategoryGroup.fantasy, pageBuilder: (_) => const PastJobsPage()),
      RandomCategory(key: 'future', title: 'อาชีพในอนาคต', icon: Icons.auto_fix_high, group: CategoryGroup.fantasy, pageBuilder: (_) => const FutureJobsPage()),
    ];

    return SafeArea(child: CategoryGrid(categories: items));
  }
}
