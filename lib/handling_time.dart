class TimeDate {
  String dateApi;
  TimeDate(this.dateApi);

  DateTime convertToDateTime() {
    return DateTime.parse(dateApi);
  }

  int dayNumber() {
    return convertToDateTime().day;
  }

  int monthNumber() {
    return convertToDateTime().month;
  }

  int hour() {
    return convertToDateTime().hour;
  }

  int minute() {
    return convertToDateTime().minute;
  }

  String dayName() {
    List<String> name = [
      'السبت',
      'الأحد',
      'الاثنين',
      'الثلاثاء',
      'الأربعاء',
      'الخميس',
      'الجمعة',
      'السبت',
      'الأحد',
      'الاثنين',
      'الثلاثاء',
      'الأربعاء',
      'الخميس',
      'الجمعة',
      'السبت',
      'الأحد',
      'الاثنين',
      'الثلاثاء',
      'الأربعاء',
      'الخميس',
      'الجمعة',
      'السبت',
      'الأحد',
      'الاثنين',
      'الثلاثاء',
      'الأربعاء',
      'الخميس',
      'الجمعة',
      'السبت',
      'الأحد',
      'الاثنين',
    ];
    return name[dayNumber() - 1];
  }

  String monthName() {
    List<String> name = [
      'كانون الثاني',
      'شباط',
      'آذار',
      'نيسان',
      'أيار',
      'حزيران',
      'تموز',
      'آب',
      'أيلول',
      'تشرين الأول',
      'تشرين الثاني',
      'كانون الأول',
    ];
    return name[monthNumber() - 1];
  }

  String period() {
    if (hour() > 12) {
      return "مساءاَ";
    } else {
      return "صباحاَ";
    }
  }
}
