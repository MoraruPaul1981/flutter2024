

import "dart:async";
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:dart_ipify/dart_ipify.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/src/logger.dart';

import '../../../Businesslayer/Use case/Interfaces/InterfaceFuture.dart';




class FuturesPingJbossServer  implements InterfaceFutureResponseJboss {
  //TODO
  //TODO ping Jboss
  @override
  Future<bool> getResponseJboss({required Uri url }) {
    // TODO: implement getResponseJboss
    print('url....$url');
    throw UnimplementedError();
  }
  //TODO ping Jboss get Public ID
  @override
  Future<int?> getServergetPublicId({required Uri url,   required String login, required String password}) {
    // TODO: implement getServergetPublicId
    print('url....$url');
    throw UnimplementedError();
  }

///TODO END  class
}





