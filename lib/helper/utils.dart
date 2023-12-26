String convertToShortDateRange(String inputDateRange) {
  List<String> parts = inputDateRange.split(' ');

  String startDay = parts[0];
  String startMonth = parts[1].substring(0,3);

  String endDay = parts[3];
  String endMonth = parts[4].substring(0,3);

  return '$startDay $startMonth - $endDay $endMonth';
}
