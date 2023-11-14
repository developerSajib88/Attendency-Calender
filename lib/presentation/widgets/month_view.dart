import 'package:attendency_calender/application/calender_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class MonthView extends HookConsumerWidget {
  const MonthView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final calenderState = ref.watch(calenderProvider);

    return SizedBox(
      width: 1.sw,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const Text("Attendency Days",style: TextStyle(color: Color(0xff006CB6),fontWeight: FontWeight.w500),),
          Gap(4.h),
          Text(calenderState.currentMonthName),

        ],
      ),
    );
  }
}
