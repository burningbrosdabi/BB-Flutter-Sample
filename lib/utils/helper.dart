import 'package:dabi_chat/model/pagination/pagination.dart';
import 'package:intl/intl.dart';

T? safe<T>(T? Function() fn, {T? fallback}) {
  try {
    return fn();
  } catch (_) {
    return fallback;
  }
}

Future<PaginationResponse<T>> fetchAll<T>({
  required Future<PaginationResponse<T>> Function(int limit) fetch,
}) async {
  final response = await fetch(1);
  if (!response.has_next) return response;
  return fetch(response.count);
}

String currencyFormat(num value, {bool symbol_included = true}) {
  final symbol = symbol_included ? 'đ' : '';
  if (value < 100) return '$value$symbol';
  final formatter = NumberFormat('#,###,000');
  return '${formatter.format(value)}$symbol';
}
