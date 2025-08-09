
class FavoriteItem {
  final String id;
  final String type; // e.g., number, name, food, etc.
  final String label;
  final Map<String, dynamic> payload; // parameters for re-run
  FavoriteItem({required this.id, required this.type, required this.label, this.payload = const {}});

  Map<String, dynamic> toMap() => { 'id': id, 'type': type, 'label': label, 'payload': payload };
  factory FavoriteItem.fromMap(Map<String, dynamic> m) => FavoriteItem(
    id: m['id'], type: m['type'], label: m['label'], payload: Map<String, dynamic>.from(m['payload'] ?? {}),
  );
}
