



import "dart:async";
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:dart_ipify/dart_ipify.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../../Businesslayer/Use case/Interfaces/InterfaceFuture.dart';
import '../../../Businesslayer/Use case/errors/Errors.dart';
import '../../../Businesslayer/Use case/ping/InterfacePing.dart';
import '../../../Businesslayer/Use case/ping/PingCheck.dart';




class FuturesPingJbossServer  implements InterfaceFutureResponseJboss {
  //TODO
  //TODO ping Jboss
  @override
  Future<bool> getResponseJboss({required Uri url }) async {
    // TODO: implement getResponseJboss
   late bool getStatusJboss  ;
    try{
      //TODO Paramerts
      print('url....$url');
      InterfacePing pingAyn = PingIpify();
      bool  PingJboss= await pingAyn.connectedJboss;
      print('start PingJboss ..${PingJboss}  ' );
      //TODO получаем State Jboss
      if (PingJboss==true) {
        Response   getResponseJboss =   await http.get(url,)
            .timeout(
          const Duration(seconds: 20),
          onTimeout: () {
            // Time has run out, do what you wanted to do.
            return  Response(' Timeout Error !!! ', 408); // Request Timeout response status code
          },
        )
            .catchError(
                (Object error,stacktrace) {
              print(' get ERROR $error  ');
            });
        print('start getResponseJboss ..${getResponseJboss}  ' );
     /*   //TODO:Статус JBOSS
     *       */
         if (getResponseJboss.statusCode==200) {
           print(' getResponseJboss.statusCode... ${getResponseJboss.statusCode}');
           getStatusJboss=true;

         }else{
           print(' getResponseJboss.statusCode... ${getResponseJboss.statusCode}');
           getStatusJboss=false;
         }

      }

      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
    return  Future<bool>.value(getStatusJboss)       ;
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





