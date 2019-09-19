import 'package:get_it/get_it.dart';

import 'package:flutter_katkemsos/services/api_data.dart';
import 'package:flutter_katkemsos/managers/marker_manager.dart';
import 'package:flutter_katkemsos/managers/news_manager.dart';
import 'package:flutter_katkemsos/managers/kat_manager.dart';
import 'package:flutter_katkemsos/managers/menu_manager.dart';

GetIt getIt = GetIt();

void setup() {
  //services
  getIt.registerSingleton<ApiData>(ApiData());


  //managers
  getIt.registerSingleton<MarkerManager>(MarkerManager());
  getIt.registerSingleton<NewsManager>(NewsManager());
  getIt.registerSingleton<KatManager>(KatManager());
  getIt.registerSingleton<MenuManager>(MenuManager());
}