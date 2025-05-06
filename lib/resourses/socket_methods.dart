import 'package:tic_tac_toe/resourses/socket_client.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  void createRoom(String username) {
    if (username.isNotEmpty) {
      _socketClient.emit('createRoom', {'username': username});
    }
  }
}
