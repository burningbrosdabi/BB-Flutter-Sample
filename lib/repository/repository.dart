import 'dart:async';

import 'package:dabi_chat/data/data_source.dart';
import 'package:dabi_chat/services/http/http.dart';
import 'package:dabi_chat/services/http/http_service.dart';
import 'package:dabi_chat/services/analytics/analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

export './auth/auth.dart';
export './chat/chat.dart';
export 'package:dabi_chat/model/pagination/pagination.dart';
export 'staff/staff.dart';
export 'product/product.dart';
export 'customer/customer.dart';
export 'order/order.dart';
export 'video/video.dart';
export 'promo/promo_repository.dart';
export 'gift/gift_repostiory.dart';
export 'comment/comment_repository.dart';

abstract class IRepository {
  @protected
  late final Http http;

  @protected
  final Logging log;

  final Ref ref;

  IRepository({required this.ref, required this.log, Http? http})
      : http = http ?? ref.read(http_provider);
}

mixin CachingStrategies<T> {
  @protected
  Future<void> save(T value);

  @protected
  Future<T?> get();

  //return cached first
  @protected
  Future<T> cacheFirst(
    Future<T> Function() callback,
  ) async {
    final completer = Completer<T>();
    final cached = await get();
    if (cached != null) {
      completer.complete(cached);
    }
    callback().then((data) {
      if (cached == null && !completer.isCompleted) {
        completer.complete(data);
      }
      save(data);
    });

    return completer.future;
  }

  // TESTING
  Stream<T> cacheThenUpdate(
    Future<T> Function() callback,
  ) {
    final stream = BehaviorSubject<T>();
    get()
        .then((value) {
          if (value != null) {
            stream.add(value);
          }
          return value;
        })
        .then((_) => callback().then((data) async {
              stream.add(data);
              save(data);
              stream.close();
            }))
        .catchError((e) {
          if (!stream.hasValue) stream.addError(e);
        });
    //if have cached return it and fetching on background and update later
    return stream;
  }

  Future<T> cacheOnError(Future<T> Function() callback) async {
    try {
      final data = await callback();
      await save(data);
      return data;
    } catch (error) {
      final cached = await get();
      if (cached == null) {
        rethrow;
      }
      return cached;
    }
  }
}

mixin DataSourceMixin<S, T> {
  abstract DataSource<T> data_source;

  Future<void> save(T value) async {
    await data_source.put(value);
  }

  Future<void> delete() async {
    await data_source.delete();
  }

  Future<void> deleteAt(String id) async {
    await data_source.deleteAt(id);
  }

  Future<T?> get() async {
    return data_source.get();
  }

  Future<void> append(T item) async {
    await data_source.put(
      item,
      merged: true,
    );
  }
}
