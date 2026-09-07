/// Ids for admin-created content. Timestamp-based is enough — this is one
/// person editing a local store, not a distributed system.
class IdGenerator {
  const IdGenerator._();

  static String next(String prefix) =>
      '${prefix}_${DateTime.now().microsecondsSinceEpoch}';
}
