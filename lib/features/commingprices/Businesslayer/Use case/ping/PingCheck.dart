

import 'dart:io';

import 'package:dart_ipify/dart_ipify.dart';

import 'InterfacePing.dart';


class PingAynJboss  extends  InterfacePing{
  @override
  Future<bool> get   connectedJboss async {
    // TODO: implement connected
    List<InternetAddress> conn;
    try {
     conn =await InternetAddress.lookup('80.70.108.165');
     print('conn...${conn}');
    } on SocketException catch (e) {
      // TODO
      print('conn...${false}');
      return Future.value(false);
    }
    //return Future.value(false);
    if (conn.isNotEmpty && conn[0].rawAddress.isNotEmpty) {
      Future.value(conn.isNotEmpty);
    }
    return false;

  }

}

class PingAyn1C  extends  InterfacePing{
  @override
  Future<bool> get   connectedJboss async {
    // TODO: implement connected
    List<InternetAddress> conn;
    try {
      conn =await InternetAddress.lookup('ya.ru');
      print('conn...${conn}');
    } on SocketException catch (e) {
      // TODO
      print('conn...${false}');
      return Future.value(false);
    }
    return Future.value(conn.isNotEmpty);
  }

}
class PingIpify  extends  InterfacePing{
  @override
  Future<bool> get   connectedJboss async {
    // TODO: implement connected
    final ipv4;
    try {
        ipv4 = await Ipify.ipv4();
      print('ipv4...$ipv4.isNotEmpty'); // 98.207.254.136
    } on SocketException catch (e) {
      print('conn...${false}');
      return Future.value(false);
    }
    return Future.value(ipv4.isNotEmpty);
  }

}