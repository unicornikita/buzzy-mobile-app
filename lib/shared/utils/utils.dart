import 'package:intl/intl.dart';

String formatDate(DateTime date) {
  return DateFormat('HH:mm').format(date);
}
