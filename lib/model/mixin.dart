import 'package:dabi_chat/services/analytics/logging.dart';
import 'package:dabi_chat/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

mixin FromListJson<T> {
  @protected
  T parseItem(Map<String, dynamic> json);

  List<T> fromListJson(
    List<Map<String, dynamic>> values,
  ) {
    final results = <T>[];
    for (final value in values) {
      try {
        final parsed = parseItem(value);
        results.add(parsed);
      } catch (e, trace) {
        Logging('Model').error(
          subTag: 'FromListJson',
          message: [
            e.toString(),
            trace,
          ].join('\n'),
        );
        continue;
      }
    }
    return results;
  }
}

class TimestampConverter implements JsonConverter<int, String> {
  const TimestampConverter();

  @override
  int fromJson(String json) {
    final now = DateTime.now().millisecondsSinceEpoch;
    return DateTime.tryParse(json)?.millisecondsSinceEpoch ?? now;
  }

  @override
  String toJson(int object) {
    final datetime = DateTime.fromMillisecondsSinceEpoch(object);
    return datetime.toString();
  }
}

class DateTimeConverter implements JsonConverter<String, DateTime> {
  const DateTimeConverter();

  @override
  String fromJson(DateTime json) {
    return json.toString();
  }

  @override
  DateTime toJson(String object) {
    return parseDate(object);
  }
}
