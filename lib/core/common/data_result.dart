/// Result wrapper used by the local-storage repositories. There's no network in
/// this app, but storage reads can still fail (corrupt JSON, schema drift), and
/// the cubits switch on this exactly like the networked apps do.
sealed class DataResult<T> {
  const DataResult();
}

class Success<T> extends DataResult<T> {
  const Success(this.data);
  final T data;
}

class Fail<T> extends DataResult<T> {
  const Fail(this.message, [this.error, this.stackTrace]);
  final String message;
  final Object? error;
  final StackTrace? stackTrace;
}
