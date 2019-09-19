import 'package:rx_command/rx_command.dart';
//import 'package:rx_command/rx_command_listener.dart';

import 'package:flutter_katkemsos/services/service_locator.dart';
import 'package:flutter_katkemsos/services/api_data.dart';
import 'package:flutter_katkemsos/model/location.dart';

class MarkerManager {
  RxCommand<void, List<Location>> loadMarkers;
  RxCommand<void, List<Location>> loadProfile;
  MarkerManager() {
    loadMarkers = RxCommand.createAsyncNoParam<List<Location>>(getIt.get<ApiData>().loadMarkers);
    loadProfile = RxCommand.createAsyncNoParam<List<Location>>(getIt.get<ApiData>().loadProfile);
  }
}