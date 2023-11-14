abstract class CalenderDomain{

  List<int>? getAttendencyDays({List<int>? days});
  (String?,int?,int?) infoMonth({String? monthName, int? totalDayOfMonth, startingDaysOfMonth});

}