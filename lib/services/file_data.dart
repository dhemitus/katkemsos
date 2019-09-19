import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';

class FileData {

  Future download(String url, String path) async {
    try {
      Response _response = await Dio().get(
        url,
        onReceiveProgress: _downloadProgress,
        options: Options(
          responseType: ResponseType.bytes,
          followRedirects: false
        )
      );

      File _file = File(path);
      var _raf = _file.openSync(mode: FileMode.write);
      _raf.writeFromSync(_response.data);
      await _raf.close();

    } catch (e) {
      print(e);
    }
  }

  void _downloadProgress(received, total) {
    if(total != -1) {
      print((received / total * 100).toStringAsFixed(0) + '%');
    }
  }
}
