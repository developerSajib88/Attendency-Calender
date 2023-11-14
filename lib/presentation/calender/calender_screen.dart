import 'package:attendency_calender/application/calender_notifier.dart';
import 'package:attendency_calender/application/calender_provider.dart';
import 'package:attendency_calender/presentation/widgets/date_item_view.dart';
import 'package:attendency_calender/presentation/widgets/days_view.dart';
import 'package:attendency_calender/presentation/widgets/month_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CalenderScreen extends HookConsumerWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {


    final calenderState = ref.watch(calenderProvider);

    useEffect((){
      print("=============+>>>>>>>>>${calenderState.attendencyDays}");
      print("=============+>>>>>>>>>${calenderState.startingDaysOfMonth}");
      print("=============+>>>>>>>>>${calenderState.currentMonthName}");
      print("=============+>>>>>>>>>${calenderState.totalDaysOfMonth}");
      return null;
    },[]);


    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 1.sw,
          height: 1.sh,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [

              const MonthView(),

              Gap(12.h),

              const DaysView(),

              Gap(12.h),

              Expanded(
                child: GridView.builder(
                    itemCount: calenderState.totalDaysOfMonth + calenderState.startingDaysOfMonth,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 7,
                        mainAxisSpacing: 15.w,
                        crossAxisSpacing: 15.w
                    ),
                    itemBuilder: (context,index)=> DateItemView(
                      date: index + 1,
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
