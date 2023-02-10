import 'dart:async';

Future<T> cacheFirstFn<T>({
  required Future<T?> Function() getFromCache,
  required Future<T> Function() getFromAPi,
  required Future<void> Function(T value) saveToCache,
}) async {
  final completer = Completer<T>();
  final cached = await getFromCache();
  if (cached != null) {
    completer.complete(cached);
  }
  getFromAPi().then((data) {
    if (cached == null && !completer.isCompleted) {
      completer.complete(data);
    }
    saveToCache(data);
  });

  return completer.future;
}
