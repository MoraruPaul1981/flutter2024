

import "dart:async";
import 'dart:io';
import 'dart:isolate';


import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';

import '../../../domain/businesslogic/Interfaces/InterfacePings.dart';
import '../../../domain/businesslogic/adressJboss/getAdress.dart';
import '../../../domain/businesslogic/converts/GetConverts.dart';

import '../../../domain/businesslogic/decoding/getDecodingCallback.dart';
import '../../entities/Entities1CMap.dart';
import 'FuturesGetSelfData.dart';
import 'InterfacesFuture/InterfaceFutures/InterfaceFuture.dart';

class FutureGetPing implements InterfacePings ,InterfaceFutureResponse,InterfaceCallBack {
  //TODO
late Logger logger;



  @override
  Future<List<Map<String, List<Entities1CMap>>>>? getResponse1c({ required BuildContext context, required Logger logger})  async {
    // TODO: implement getJson1cPing
   late Completer<List<Map<String, List<Entities1CMap>>>> completer=Completer.sync();
   late List<Map<String, List<Entities1CMap>>>? getSelfDataCallBack =[];
    try {
      //TODO init LOGER
      this.logger=logger;
      //TODO адрес пинга к серверу
      var adressCurrent1C=  GetAdress1CPrices().adress1C( ) as String;
      final parsedUrl=Uri.parse(adressCurrent1C) as Uri;

      print('adressCurrent1C .. $adressCurrent1C'+'parsedUrl .. $parsedUrl');

      //TODO главный запрос PING #1
        oneStepPing(parsedUrl, logger)
            .then((IspingOtServer) async {
          //TODO then
          logger.i('IspingOtServer ..  '+IspingOtServer.toString()+'' );




          // создаем порт приема сообщений от нового изолята
     /*     final receivePort = ReceivePort();
          // создаем новый изолят
          final isolate = await Isolate.spawn(count, receivePort.sendPort);
          // запускаем прослушивание входящих сообщений
          receivePort.listen((message) {
            print(message);
          });*/

          var receivePort = ReceivePort();
          // Here runMyIsolate methos should be a top level function
          await Isolate.spawn(runMyIsolate, [receivePort.sendPort, "My Custom Message"]);
          // запускаем прослушивание входящих сообщений
          receivePort.listen((message) {
            print(message);
          });





          //TODO когад пришли данные #2
          List<Map<String, List<Entities1CMap>>> getSelfDataCallBack = await twoStepJsonOt1c(IspingOtServer, logger);

          logger.i('getSelfDataCallBack..  '+getSelfDataCallBack.toString()+'' );

          //TODO закрвваем Compete после все отработынных операций  #3
          completer.complete(getSelfDataCallBack    );
          logger.i('Result completer.isCompleted ..  '+completer.isCompleted.toString()+'' );


          return getSelfDataCallBack;

        }).catchError((Object error) {
          logger.i(' catchError  ERROR $error  ');
          //TODO оБРАБОТКА пинга
        });
           //TODO END   CALL BACK
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO закрвваем Compete
      completer.completeError(stacktrace );
    }
    return   completer.future;
  }






// We declare a static function here for an isolated callback function
static void runMyIsolate(List<dynamic> args) {
  var sendPort = args[0] as SendPort;

  sendPort.send('23232232323232323message');
  print("In runMyIsolate ");
 // Isolate.exit(sendPort, args);
}








//TODO главный запрос PING #1
  Future<List<Map<String, List<Entities1CMap>>>> twoStepJsonOt1c(String IspingOtServer, Logger logger) async {
   var getSelfDataCallBack;
    try{
         //TODO когад пришли данные #2
    BigInt Uuid=BigInt.parse('0')  ;
           int IdUser=8;

     getSelfDataCallBack=await  CallBackSelfData(IspingOtServer, logger,IdUser,Uuid) as  List<Map<String, List<Entities1CMap>>>;

          logger.i('Result getSelfDataCallBack ..  '+getSelfDataCallBack.toString()+'' );
  }   catch (e, stacktrace) {
    print(' get ERROR $e get stacktrace $stacktrace ');
}
    return getSelfDataCallBack;
  }




  //TODO когад пришли данные #2
  Future<String> oneStepPing(Uri parsedUrl, Logger logger) async {
    logger.i('Result parsedUrl ..  '+parsedUrl.toString()+'' );
    return CallBackPing(parsedUrl,  logger) ;
  }






  //TODO ping
  @override
  Future<String> CallBackPing(Uri parsedUrl,   Logger logger ) async {
    var getpingCallBack ;
    try {
      //TODO только для пинга
        BigInt Uuid=BigInt.parse('0')  ;
       int IdUser=0;

      //TODO: первая часть пинга
      Future<Response>responsePingFirstPart =     getDownloadJsonMaps(url:parsedUrl ,IdUser:IdUser ,UUID:Uuid.toInt() ,logger: logger);
      responsePingFirstPart.catchError(
                  (Object error) {
                logger.i(' catchError  ERROR $error  ');
                //TODO оБРАБОТКА пинга
              });
      //TODO:
       var  getpingCallBackResponseFirstPart  = await  responsePingFirstPart as  Response;
        logger.i('Result  getpingCallBackResponseFirstPart ..  '+getpingCallBackResponseFirstPart.toString()+'' );

      //TODO: вторая часть пинга
        Future<String?> getProcessingPingTwoPart=  getCompetePing(   getpingCallBackResponseFirstPart, logger);
        getProcessingPingTwoPart.catchError(
                (Object error) {
              logger.i(' catchError  ERROR $error  ');
              //TODO оБРАБОТКА пинга
            });
        //TODO:
        getpingCallBack   = await  getProcessingPingTwoPart as  String;
        logger.i('Result  getpingCallBack ..  '+getpingCallBack.toString()+'' );

    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }

    return getpingCallBack;
  }




//TODO self-data
  @override
Future<List<Map<String, List<Entities1CMap>>>> CallBackSelfData(String? IspingOtServer, Logger logger,int IdUser,BigInt Uuid) async {
  //TODO
  late List<Map<String, List<Entities1CMap>>>      getSelfDataCallBack=[];
  try {
    //TODO когад пришли данные
    if (IspingOtServer!.isNotEmpty) {
      //TODO адрес пинга к серверу
      var adressCurrent1C=  GetAdress1CPrices().adress1C( ) as String;
      final parsedUrl=Uri.parse(adressCurrent1C) as Uri;

      logger.i('Result IspingOtServer ..  '+IspingOtServer.toString()+'' );

      FuturesGetSelfData futuresGetSelfData=   new FuturesGetSelfData();


//TODO получаем данные от 1с Севра
         Future<Response> responseSelfDataFuture =  futuresGetSelfData.getDownloadJsonMaps(url:parsedUrl ,IdUser:IdUser ,UUID:Uuid.toInt() ,logger: logger);

      responseSelfDataFuture.catchError(
              (Object error) {
            logger.i(' catchError  ERROR $error  ');
            //TODO оБРАБОТКА пинга
          });
      //TODO получаем Responce Self-Data
      final   Response CallBackresponseSelfData=await  responseSelfDataFuture;
      //TODO then
      logger.i(' CallBackresponseSelfData .. $CallBackresponseSelfData');

      //TODO производим обработку пришедшего с  данными Response
         getSelfDataCallBack=  await futuresGetSelfData.getGeneratorProcessSelfData(  response1C:CallBackresponseSelfData, logger:logger);

      logger.i('Result getSelfDataCallBack ..  '+getSelfDataCallBack.toString()+'' );



    }else{
      logger.i('Result IspingOtServer ..  '+IspingOtServer.toString()+'' );
    }
    //TODO end Call bACK
    logger.i('Result getSelfDataCallBack ..  '+getSelfDataCallBack.toString()+'' );

    //TODO
  }   catch (e, stacktrace) {
    print(' get ERROR $e get stacktrace $stacktrace ');
  }

  return  Future(() => getSelfDataCallBack) ;

}















//TODO PING
  @override
   String?   getComplitingResponsePing(    Response backresponsejboss)   {
    // TODO: implement getCompletePing
    String?  getCallPing1c;
    try{
      print('getComplete $backresponsejboss');
      //TODO
      print('response1C.statusCode $backresponsejboss.statusCode');
      if (backresponsejboss?.statusCode==200) {
        //TODO realy ping
        print(' then backresponsejboss. contentLength $backresponsejboss.contentLength');
        //TODO PING
        getCallPing1c= getDecodingCallback().getResponseDecoderPing(response1C: backresponsejboss)    ;

        print('getCallPing1c $getCallPing1c');
    logger.i('start getCallPing1c ..  '+getCallPing1c.toString()+'' );
      } else {
        //TODO
        print('response1C.statusCode $backresponsejboss.statusCode');
    logger.i('response1C.statusCode $backresponsejboss.statusCode'+'' );
      }

      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }
    return getCallPing1c;
  }


//TODO sendResponce
  @override
  Future<Response> getDownloadJsonMaps({required Uri url, required int IdUser, required int UUID, required Logger logger}) async {
    // TODO: implement getDownloadJsonMaps
    // TODO: implement getDownloadJsonMaps
   late  Response  getResponse;
    try{
      //TODO Paramerts
      print('url..$url'+'IdUser..$IdUser'+ 'UUID..$UUID');
      //TODO base64
      final   String? basicAuth=     GetConverts().convertBase64(  user: 'dsu1Admin', password: 'dsu1Admin');

      print(' basicAuth  $basicAuth');




      
      //TODO главный запрос
      getResponse =   await http.get(
          url,
          headers: {
            'user':IdUser.toString(),
            'uuid':UUID.toString(),
            'authorization':'$basicAuth',
            "Access-Control-Allow-Origin": "*"
          }
      )
          .catchError(
              (Object error) {
            print(' get ERROR $error  ');
          })  ;

      logger.i('start getResponse ..  '+getResponse.toString()+'' );
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }
    return getResponse;
  }






  @override
   Future<String?>  getCompetePing( Response backresponsejboss, Logger logger)  async   {
    // TODO: implement getCompetePing

    logger.i('start backresponsejboss ..  '+backresponsejboss.toString()+'' );

      return await getComplitingResponsePing(     backresponsejboss) ;///TODO    return compute(getComplitingResponse ,backresponsejboss  );
    //return     compute(getComplitingResponsePing,backresponsejboss)  ;///TODO    return compute(getComplitingResponse ,backresponsejboss  );
  }

///TODO END  class
}





