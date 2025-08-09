
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/app_providers.dart';
import '../services/ads_service.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return ListView(
      padding: const EdgeInsets.all(12),
      children: [
        const ListTile(title: Text('ตั้งค่าธีม')),
        RadioListTile<ThemeMode>(title: const Text('System'), value: ThemeMode.system, groupValue: themeMode, onChanged: (v) => ref.read(themeModeProvider.notifier).state = v!),
        RadioListTile<ThemeMode>(title: const Text('Light'), value: ThemeMode.light, groupValue: themeMode, onChanged: (v) => ref.read(themeModeProvider.notifier).state = v!),
        RadioListTile<ThemeMode>(title: const Text('Dark'), value: ThemeMode.dark, groupValue: themeMode, onChanged: (v) => ref.read(themeModeProvider.notifier).state = v!),
        const Divider(),
        ListTile(
          title: const Text('Initialize Ads SDKs'),
          trailing: FilledButton(onPressed: () => AdsService.init(), child: const Text('Init Ads')),
        ),
      ],
    );
  }
}
