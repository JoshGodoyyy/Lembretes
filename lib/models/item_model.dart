class Items {
  String title;
  DateTime dateTime;
  int hours;
  int minutes;
  String description;

  Items({
    required this.title,
    required this.dateTime,
    required this.hours,
    required this.minutes,
    required this.description,
  });

  Items.toJson(Map<String, dynamic> reminderList)
      : title = reminderList['title'],
        dateTime = reminderList['datetime'],
        hours = reminderList['hours'],
        minutes = reminderList['minutes'],
        description = reminderList['description'];

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'datetime': dateTime.toIso8601String(),
      'hours': hours,
      'minutes': minutes,
      'description': description,
    };
  }
}
