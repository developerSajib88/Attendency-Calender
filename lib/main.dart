import 'package:attendency_calender/attendency_calender.dart';
import 'package:attendency_calender/core/dependency_injector/dependency_injector.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main()async{
  runApp(const MyApp());
  await di.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProviderScope(
            child: CalenderScreen()
        ),
      ),
    );
  }
}
