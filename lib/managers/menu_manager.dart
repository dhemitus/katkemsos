import 'package:rx_command/rx_command.dart';
import 'package:rx_command/rx_command_listener.dart';

class MenuManager {
  RxCommand<int, int> sendId;
  RxCommandListener<int, int> sendItListener;

  MenuManager() {
    sendId = RxCommand.createSync<int, int>((i) => i);

    sendItListener = RxCommandListener(
      sendId,
      onValue: (val) => print('print $val')
    );
  }
}