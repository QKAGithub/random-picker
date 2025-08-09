
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../models/favorite_item.dart';

class FavoritesNotifier extends StateNotifier<List<FavoriteItem>> {
  FavoritesNotifier(): super(const []);

  void add(FavoriteItem item) => state = [...state, item];
  void remove(String id) => state = state.where((e) => e.id != id).toList();
  void clear() => state = const [];
}

final favoritesProvider = StateNotifierProvider<FavoritesNotifier, List<FavoriteItem>>((ref) => FavoritesNotifier());

FavoriteItem makeFavorite(String type, String label, Map<String, dynamic> payload) =>
    FavoriteItem(id: const Uuid().v4(), type: type, label: label, payload: payload);
