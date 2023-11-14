import 'package:equatable/equatable.dart';

class CalenderState extends Equatable{

  final int startingDaysOfMonth;
  final int totalDaysOfMonth;
  final String currentMonthName;
  final List<int> attendencyDays;

  const CalenderState({
    required this.startingDaysOfMonth,
    required this.totalDaysOfMonth,
    required this.currentMonthName,
    required this.attendencyDays
  });


  CalenderState copyWith({
     int? startingDaysOfMonth,
     int? totalDaysOfMonth,
     String? currentMonthName,
     List<int>? attendencyDays
  })=> CalenderState(
      startingDaysOfMonth: startingDaysOfMonth ?? this.startingDaysOfMonth,
      totalDaysOfMonth: totalDaysOfMonth ?? this.totalDaysOfMonth,
      currentMonthName: currentMonthName ?? this.currentMonthName,
      attendencyDays: attendencyDays ?? this.attendencyDays
  );



  factory CalenderState.init()=> const CalenderState(
      startingDaysOfMonth: 0,
      totalDaysOfMonth: 0,
      currentMonthName: "",
      attendencyDays: []
  );


  @override
  // TODO: implement props
  List<Object?> get props => [
    startingDaysOfMonth,
    totalDaysOfMonth,
    currentMonthName,
    attendencyDays
  ];

}