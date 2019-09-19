import 'package:rx_command/rx_command.dart';
//import 'package:rx_command/rx_command_listener.dart';

import 'package:flutter_katkemsos/services/service_locator.dart';
import 'package:flutter_katkemsos/services/api_data.dart';
import 'package:flutter_katkemsos/model/news.dart';

class NewsManager {
  RxCommand<void, List<News>> loadNews;
  RxCommand<void, List<News>> loadGallery;
  RxCommand<void, List<News>> loadProgram;
  RxCommand<News, dynamic> download;
  NewsManager() {
    loadNews = RxCommand.createAsyncNoParam<List<News>>(getIt.get<ApiData>().loadNews);
    loadGallery = RxCommand.createAsyncNoParam<List<News>>(getIt.get<ApiData>().loadGallery);
    loadProgram = RxCommand.createAsyncNoParam<List<News>>(getIt.get<ApiData>().loadProgram);
    download = RxCommand.createAsync<News, dynamic>(getIt.get<ApiData>().download);

//    loadNews.listen((data) => print(data));
  }
}