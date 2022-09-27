
import 'package:get_it/get_it.dart';

import 'package:michiapp/Services/get_it.dart';
import 'package:michiapp/controller/imgcontroller.dart';

final locator= GetIt.instance;


void setup () {

  locator.registerLazySingleton<GetImg>(() => GetImg());
  locator.registerLazySingleton<imgcontroller>(() => imgcontroller());

}