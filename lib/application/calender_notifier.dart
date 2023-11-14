import 'package:attendency_calender/application/calender_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../domain/calender_domain/calender_domain.dart';

class CalenderNotifier extends StateNotifier<CalenderState>{
  final CalenderDomain? calenderDom;
  CalenderNotifier({required this.calenderDom}):super(CalenderState.init());

  void stateMaker(CalenderState sTate)=> state = sTate;

  void init(){
    setMonthInfo();
    setAttendenceDays();
  }

  void setMonthInfo(){
    final res = calenderDom?.infoMonth(
        monthName: DateFormat('MMMM').format(DateTime.now()),
        startingDaysOfMonth: DateTime(DateTime.now().year, DateTime.now().month, 1).weekday,
        totalDayOfMonth: DateTime(DateTime.now().year, DateTime.now().month + 1, 0).day
    );
    stateMaker(state.copyWith(
      currentMonthName: res?.$1,
      totalDaysOfMonth: res?.$2,
      startingDaysOfMonth: res?.$3
    ));
  }


  void setAttendenceDays(){
    stateMaker(state.copyWith(
        attendencyDays: calenderDom?.getAttendencyDays(
            days: [1,10,12,17,30,12,15].map((element) => element + DateTime(DateTime.now().year, DateTime.now().month, 1).weekday).toList()
        )
    ));
  }


}