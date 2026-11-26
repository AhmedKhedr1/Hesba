import 'package:intl/intl.dart';

class MoneyFormatter {
  MoneyFormatter._();

  static final NumberFormat _format = NumberFormat('#,##0.##', 'en');

  static String format(int minorUnits) => _format.format(minorUnits / 100);
}
