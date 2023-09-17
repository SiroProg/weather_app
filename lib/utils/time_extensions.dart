enum WeekDay {
  monday("Monday"),
  tuesday("Tuesday"),
  wednesday("Wednesday"),
  thursday("Thursday"),
  friday("Friday"),
  saturday("Saturday"),
  sunday("Sunday");

  const WeekDay(this.dayName);

  final String dayName;
}

enum MonthName {
  january("January"),
  february("February"),
  march("March"),
  april("April"),
  may("May"),
  june("June"),
  july("July"),
  august("August"),
  september("September"),
  october("October"),
  november("November"),
  december("December");

  const MonthName(this.mothName);

  final String mothName;
}

extension TimeExtension on DateTime {
  String get weekMounthDay {
    /// weekday -> starts with Monday equal to 1
    /// ends Sunday equal to 7
    final week = WeekDay.values[weekday - 1].dayName.substring(0, 3);

    /// month -> starts with January equal to 1
    /// ends December equal to 12
    final m = MonthName.values[month - 1].mothName.substring(0, 3);
    return '$week, $m $day';
  }
}

