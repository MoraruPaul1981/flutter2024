

import 'dart:io';

import 'InterfacePing.dart';


class PingAyn  extends  InterfacePing{
  @override
  Future<bool> get   connectedJboss async {
    // TODO: implement connected
    List<InternetAddress> conn;
    try {
     conn =await InternetAddress.lookup('http://80.70.108.165:8888/jboss-1.0-SNAPSHOT/');
     print('conn...${conn}');
    } on SocketException catch (e) {
      // TODO
      print('conn...${false}');
      return Future.value(false);
    }
   return Future.value(conn.isNotEmpty);
  }

}