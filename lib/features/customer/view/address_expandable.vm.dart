import 'package:dabi_chat/model/address/address.dart';
import 'package:dabi_chat/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

class AddressExpandableViewModel {
  AddressExpandableViewModel({required this.asyncValueNotifier}) {
    asyncValueNotifier.addListener(_onAsyncValueChanged);
    inputController.addListener(_onTextChanged);
    _inputStream
        .distinct()
        .debounceTime(const Duration(milliseconds: 250))
        .listen(_onTextDebouncedChanged);
  }

  final ValueNotifier<AsyncValue<List<Address>>> asyncValueNotifier;
  final ValueNotifier<List<Address>> valueNotifier = ValueNotifier([]);
  final inputController = TextEditingController();
  final _inputStream = PublishSubject<String>();

  void _onAsyncValueChanged() {
    asyncValueNotifier.value.maybeWhen(
        data: (data) {
          valueNotifier.value = data;
        },
        orElse: () => {});
  }

  void _onTextChanged() {
    _inputStream.add(inputController.text);
  }

  void _onTextDebouncedChanged(String text) {
    if (text.isEmpty) {
      _onAsyncValueChanged();
    }
    final filter = valueNotifier.value
        .where((address) => matchSearch(address.name, text))
        .toList();
    valueNotifier.value = filter;
  }

  void dispose() {
    asyncValueNotifier.removeListener(_onAsyncValueChanged);
    inputController.removeListener(_onTextChanged);
    _inputStream.close();
  }
}
