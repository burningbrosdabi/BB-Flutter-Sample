import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppSearchDelegate<T> extends SearchDelegate<T> {
  @override
  String get searchFieldLabel => 'Bạn cần tìm gì?';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(CupertinoIcons.clear_circled),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return const BackButton();
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return super.appBarTheme(context).copyWith(
          appBarTheme: Theme.of(context).appBarTheme.copyWith(elevation: 0),
        );
  }
}
