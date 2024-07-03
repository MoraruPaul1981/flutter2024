

import 'dart:io';

import 'InterfacePing.dart';


class PingAynJboss  extends  InterfacePing{
  @override
  Future<bool> get   connectedJboss async {
    // TODO: implement connected
    List<InternetAddress> conn;
    try {
     conn =await InternetAddress.lookup('80.70.108.165');
     print('conn...${conn}     conn.isNotEmpty...${    conn.isNotEmpty}');
    } on SocketException catch (e) {
      // TODO
      print('conn...${false}');
      return Future.value(false);
    }
   return Future.value(conn.isNotEmpty);
  }

}

class PingAyn1C  extends  InterfacePing{
  @override
  Future<bool> get   connectedJboss async {
    // TODO: implement connected
    List<InternetAddress> conn;
    try {
      conn =await InternetAddress.lookup('ya.ru');
      print('conn...${conn}     conn.isNotEmpty...${    conn.isNotEmpty}');
    } on SocketException catch (e) {
      // TODO
      print('conn...${false}');
      return Future.value(false);
    }
    return Future.value(conn.isNotEmpty);
  }

}
