import 'package:attendency_calender/application/calender_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DateItemView extends HookConsumerWidget {
  final int date;
  const DateItemView({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context,WidgetRef ref) {

    final calenderState = ref.watch(calenderProvider);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: calenderState.attendencyDays.contains(date)? const Color(0xff006CB6) : Colors.transparent,
      ),
      child: Center(
        child: Visibility(
          visible: date > calenderState.startingDaysOfMonth,
          replacement: Container(),
          child: Text(
              (date - calenderState.startingDaysOfMonth).toString(),
              style: TextStyle(color: calenderState.attendencyDays.contains(date)? Colors.white : const Color(0xff006CB6))
          ),
        ),
      ),
    );
  }
}
