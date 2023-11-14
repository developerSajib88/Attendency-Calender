import 'package:attendency_calender/application/calender_notifier.dart';
import 'package:attendency_calender/application/calender_state.dart';
import 'package:attendency_calender/core/dependency_injector/dependency_injector.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final calenderProvider = StateNotifierProvider<CalenderNotifier,CalenderState>((ref) =>
CalenderNotifier(calenderDom: dependencyInjection())..init());