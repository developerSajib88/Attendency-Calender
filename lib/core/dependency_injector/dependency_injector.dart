import 'package:attendency_calender/domain/calender_domain/calender_domain.dart';
import 'package:attendency_calender/infrastructure/calender_i/calender_dom_i.dart';
import 'package:get_it/get_it.dart' as di;

final dependencyInjection = di.GetIt.instance;

Future<void> init()async{
  dependencyInjection.registerLazySingleton<CalenderDomain>(() => CalenderDomI());
}