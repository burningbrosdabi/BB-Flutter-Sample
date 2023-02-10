import 'package:intl/intl.dart';

extension DateTimeUtils on DateTime {
  int get secondsSinceEpoch => millisecondsSinceEpoch ~/ 1e3;
  String get yyyy_MM_dd {
    final formater = DateFormat('yyyy-MM-dd');
    return formater.format(this);
  }

  String get dd_MM_yyyy {
    final formater = DateFormat('dd.MM.yyyy');
    return formater.format(this);
  }

  bool isAfterOrSameAs(DateTime date) {
    return isAfter(date) || isAtSameMomentAs(date);
  }
}

DateTime parseDate(dynamic value) {
  if (value == null) return DateTime.now();
  return DateTime.tryParse(value) ?? DateTime.now();
}
