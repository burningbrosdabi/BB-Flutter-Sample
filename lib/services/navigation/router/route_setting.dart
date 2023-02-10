class RouteSetting<T> {
  T? params;

  String path;

  final int id = DateTime.now().millisecondsSinceEpoch;

  bool shouldBeAuth = false;

  late String Function() toPathUrl;

  RouteSetting(
    this.path, {
    this.params,
    this.shouldBeAuth = false,
    String Function()? toPathUrl,
  }) {
    this.toPathUrl = toPathUrl ?? () => path;
  }
}
