
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/favorites_provider.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(favoritesProvider);
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemBuilder: (_, i) => ListTile(
        leading: const Icon(Icons.star),
        title: Text(items[i].label),
        subtitle: Text(items[i].type),
        trailing: IconButton(icon: const Icon(Icons.delete_outline), onPressed: () => ref.read(favoritesProvider.notifier).remove(items[i].id)),
      ),
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemCount: items.length,
    );
  }
}
