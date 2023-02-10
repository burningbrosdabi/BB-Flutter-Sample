import 'dart:async';

import 'package:dabi_chat/model/pagination/pagination.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:quiver/core.dart';

class $PagingController<T, F> {
  late PagingController<int, T> _controller;
  final Future<PaginationResponse<T>> Function(int offset, [F? filter]) fetch;
  F? filter;

  PagingController<int, T> get pagingController => _controller;

  Completer<void>? _refresh_completer;

  final countNotifier = ValueNotifier<Optional<int>>(const Optional.absent());

  $PagingController({
    required this.fetch,
    required dynamic Function(T value) keyExtractor,
    F? initialFilter,
  }) : filter = initialFilter {
    _controller = PagingControllerExtent<int, T>(
        firstPageKey: 0, keyExtractor: keyExtractor)
      ..addPageRequestListener(_fetchPage);
  }

  Future<void> refresh({bool background = false}) {
    _refresh_completer = Completer<void>();
    (_controller as PagingControllerExtent).refresh(background: background);
    return _refresh_completer!.future;
  }

  void updateFilter(F filter) {
    this.filter = filter;
    _controller.refresh();
  }

  Future<void> _fetchPage(int offset) async {
    try {
      final response = await fetch(offset, filter);
      final isLastPage = !response.has_next;

      if (isLastPage) {
        _controller.appendLastPage(response.results as List<T>);
      } else {
        final next = offset + response.results.length;
        _controller.appendPage(response.results as List<T>, next);
      }
      countNotifier.value = Optional.of(response.count);
    } catch (error) {
      _controller.error = error;
    } finally {
      if (_refresh_completer != null && !_refresh_completer!.isCompleted)
        _refresh_completer?.complete();
    }
  }

  void moveItemToTop({required bool Function(T element) where}) {
    if (pagingController.itemList == null) return;
    final newList = List.of(pagingController.itemList!);
    final index = pagingController.itemList!.indexWhere(where);
    if (index < 0) return;
    final element = newList.removeAt(index);
    newList.insert(0, element);
    pagingController.itemList = newList;
  }
}

class PagingControllerExtent<PageKeyType, ItemType>
    extends PagingController<PageKeyType, ItemType> {
  PagingControllerExtent({
    required super.firstPageKey,
    required this.keyExtractor,
    super.invisibleItemsThreshold,
  });

  final Function(ItemType value) keyExtractor;

  /// Whether it is in the state of background refresh
  bool background = false;

  @override
  void refresh({bool background = false}) {
    if (background) {
      this.background = true;
      // Since the state of PagingState has too much influence,
      // skip it here and directly notifyPageRequestListeners.
      notifyPageRequestListeners(firstPageKey);
    } else {
      super.refresh();
    }
  }

  @override
  void appendPage(List<ItemType> newItems, PageKeyType? nextPageKey) {
    // Add judgment here
    final previousItems =
        background ? <ItemType>[] : value.itemList ?? <ItemType>[];

    final map = {
      for (final item in previousItems) keyExtractor(item): item,
      for (final item in newItems) keyExtractor(item): item,
    };

    final itemList = map.values.toList();
    value = PagingState<PageKeyType, ItemType>(
      itemList: itemList,
      error: null,
      nextPageKey: nextPageKey,
    );
    // reduction
    background = false;
  }
}
