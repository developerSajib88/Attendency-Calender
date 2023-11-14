import 'package:attendency_calender/domain/calender_domain/calender_domain.dart';

class CalenderDomI implements CalenderDomain{
  @override
  List<int>? getAttendencyDays({List<int>? days}) {
    return days;
  }

  @override
  (String?, int?, int?) infoMonth({String? monthName, int? totalDayOfMonth, startingDaysOfMonth}) {
    // TODO: implement infoMonth
    return (monthName,totalDayOfMonth,startingDaysOfMonth);
  }

}