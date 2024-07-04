

import "dart:async";
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';



import '../../Businesslayer/Use case/Interfaces/InterfaceFuture.dart';
import '../../Businesslayer/Use case/Interfaces/InterfacePings.dart';
import '../../Businesslayer/Use case/adressJboss/getAdress.dart';
import '../../Businesslayer/Use case/converts/GetConverts.dart';
import '../../Businesslayer/Use case/decoding/getDecodingCallback.dart';
import '../../Businesslayer/Use case/errors/Errors.dart';
import '../../Businesslayer/Use case/ping/InterfacePing.dart';
import '../../Businesslayer/Use case/ping/PingCheck.dart';
import '../entities/Entities1CMap.dart';
import 'FuturesDataFrom1cServer.dart';



class FuturesPing1cServer implements InterfacePings ,InterfaceFutureResponse,InterfaceCallBack {
  //TODO
 



  @override
  Future<List<Map<String, List<Entities1CMap>>>> getResponse1c({ required BuildContext context , required BigInt Uuid,required int IdUser})  async {
    // TODO: implement getJson1cPing
   late  Completer<List<Map<String, List<Entities1CMap>>>> completer=Completer.sync();
    try {
      //TODO init LOGER
      //TODO адрес пинга к серверу
      var adressCurrent1C=  GetAdress1CPrices().adress1C( ) as String;
      final parsedUrl=Uri.parse(adressCurrent1C) as Uri;

      print('adressCurrent1C .. $adressCurrent1C'+'parsedUrl .. $parsedUrl');

      //TODO главный запрос PING #1
        oneStepPing(parsedUrl,    Uuid,  IdUser)
            .then((IspingOtServer) async {
          //TODO then
       print('IspingOtServer ..  '+IspingOtServer.toString()+'' );

          //TODO когад пришли данные #2
          List<Map<String, List<Entities1CMap>>> getSelfDataCallBack = await twoStepJsonOt1c(IspingOtServer);

       print('getSelfDataCallBack..  '+getSelfDataCallBack.toString()+'' );

          //TODO закрвваем Compete после все отработынных операций  #3
          completer.complete(getSelfDataCallBack    );
       print('Result completer.isCompleted ..  '+completer.isCompleted.toString()+'' );


          return getSelfDataCallBack;

        }).catchError((Object error) {
       print(' catchError  ERROR $error  ');
          completer.completeError(error );
          //TODO оБРАБОТКА пинга
        });
           //TODO END   CALL BACK
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO закрвваем Compete
      completer.completeError(stacktrace );
      //TODO:
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
    return   completer.future;
  }











//TODO главный запрос PING #1
  @override
  Future<List<Map<String, List<Entities1CMap>>>> twoStepJsonOt1c(String IspingOtServer ) async {
   var getSelfDataCallBack;
    try{
         //TODO когад пришли данные #2
    BigInt Uuid=BigInt.parse('0')  ;
           int IdUser=8;

     getSelfDataCallBack=await  CallBackSelfData(IspingOtServer,IdUser,Uuid) as  List<Map<String, List<Entities1CMap>>>;

       print('Result getSelfDataCallBack ..  '+getSelfDataCallBack.toString()+'' );
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }

    return getSelfDataCallBack;
  }




  //TODO когад пришли данные #2
  @override
  Future<String> oneStepPing(Uri parsedUrl ,  BigInt Uuid,int IdUser) async {
 print('Result parsedUrl ..  '+parsedUrl.toString()+'' );
    return CallBackPing(parsedUrl,    Uuid,  IdUser) ;
  }






  //TODO ping
  @override
  Future<String> CallBackPing(Uri parsedUrl,  BigInt Uuid,int IdUser) async {
      String? getpingCallBack ;
    try {
      //TODO: первая часть пинга
        Future<Response?> futurePingCallBack =    getDownloadJsonMaps(url:parsedUrl ,IdUser:IdUser ,UUID:Uuid.toInt() );


        final   Response? responsePingCallBack=await  futurePingCallBack
            .catchError((Object error) {
                                  print(' get ERROR $error  ');
                                });
        print('Future finished successfully  responsePingCallBack... ${responsePingCallBack}');

        if (responsePingCallBack!=null) {

          if (responsePingCallBack.statusCode==200) {
            getpingCallBack =responsePingCallBack.statusCode.toString() ;
            print(' getpingCallBack... ${getpingCallBack}');
          }
        }
        print("    responsePingCallBack : ${responsePingCallBack}");
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
    return getpingCallBack ??=""   ;
  }




//TODO self-data
  @override
Future<List<Map<String, List<Entities1CMap>>>> CallBackSelfData(String? IspingOtServer ,int IdUser,BigInt Uuid) async {
  //TODO
  late List<Map<String, List<Entities1CMap>>>      getSelfDataCallBack=[];
  try {
    //TODO когад пришли данные
    if (IspingOtServer!.isNotEmpty) {
      //TODO адрес пинга к серверу
      var adressCurrent1C=  GetAdress1CPrices().adress1C( ) as String;
      final parsedUrl=Uri.parse(adressCurrent1C) as Uri;

   print('Result IspingOtServer ..  '+IspingOtServer.toString()+'' );

      FuturesDataFrom1cServer futuresGetSelfData=   new FuturesDataFrom1cServer();


//TODO получаем данные от 1с Севра
         Future<Response> responseSelfDataFuture =  futuresGetSelfData.getDownloadJsonMaps(url:parsedUrl ,IdUser:IdUser ,UUID:Uuid.toInt() );

      responseSelfDataFuture.catchError(
              (Object error) {
         print(' catchError  ERROR $error  ');
            //TODO оБРАБОТКА пинга
          });
      //TODO получаем Responce Self-Data
      final   Response CallBackresponseSelfData=await  responseSelfDataFuture;
      //TODO then
   print(' CallBackresponseSelfData .. $CallBackresponseSelfData');

      //TODO производим обработку пришедшего с  данными Response
         getSelfDataCallBack=  await futuresGetSelfData.getGeneratorProcessSelfData(  response1C:CallBackresponseSelfData );

   print('Result getSelfDataCallBack ..  '+getSelfDataCallBack.toString()+'' );



    }else{
   print('Result IspingOtServer ..  '+IspingOtServer.toString()+'' );
    }
    //TODO end Call bACK
 print('Result getSelfDataCallBack ..  '+getSelfDataCallBack.toString()+'' );

    //TODO
    //TODO error
  }   catch (e, stacktrace) {
    print(' get ERROR $e get stacktrace $stacktrace ');
    //TODO: Gradle Error
    Errors errors=Errors();
    errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
  }


  return  Future(() => getSelfDataCallBack) ;

}















//TODO PING
  @override
   String  getComplitingResponsePing(    Response backresponsejboss)   {
    // TODO: implement getCompletePing
    var  getCallPing1c;
    try{
      print('getComplete $backresponsejboss');
      //TODO
      print('response1C.statusCode $backresponsejboss.statusCode');
      if (backresponsejboss?.statusCode==200) {
        //TODO realy ping
        print(' then backresponsejboss. contentLength $backresponsejboss.contentLength');
        //TODO PING
        getCallPing1c= getDecodingCallback().getResponseDecoderPing(response1C: backresponsejboss) as String    ;

        print('getCallPing1c $getCallPing1c');
 print('start getCallPing1c ..  '+getCallPing1c.toString()+'' );
      } else {
        //TODO
        print('response1C.statusCode $backresponsejboss.statusCode');
 print('response1C.statusCode $backresponsejboss.statusCode'+'' );
      }

      //TODO error
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }

    return getCallPing1c;
  }


//TODO sendResponce
  @override
  Future<Response?> getDownloadJsonMaps({required Uri url, required int IdUser, required int UUID }) async {
    // TODO: implement getDownloadJsonMaps
    Response?     getResponse;

    try{
      //TODO Paramerts
      print('url..$url'+'IdUser..$IdUser'+ 'UUID..$UUID');
      //TODO base64
        String basicAuth=     GetConverts().convertBase64(  user: 'dsu1Admin', password: 'dsu1Admin');

      print(' basicAuth  $basicAuth');


       InterfacePing pingAyn = PingAynJboss();
     // InterfacePing pingAyn = PingAyn1C();
      bool  PingJboss= await pingAyn.connectedJboss;
      print('start PingJboss ..${getResponse}  ' );
     //TODO главный запрос
      if (PingJboss==true) {
        getResponse =   await http.get(
                  url,
                  headers: {
                    'user':IdUser.toString(),
                    'uuid':UUID.toString(),
                    'authorization':'$basicAuth',
                    "Access-Control-Allow-Origin": "*"
                  }
              )
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
        print('start getResponse ..${getResponse}  ' );
      } else {
        print('start PingJboss ..${getResponse}  ' );
      }



    //TODO error
  }   catch (e, stacktrace) {
  print(' get ERROR $e get stacktrace $stacktrace ');
  //TODO: Gradle Error
  Errors errors=Errors();
  errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
}
     return        getResponse;
  }






  @override
   Future<String>  getCompetePing( Response backresponsejboss )  async   {
    // TODO: implement getCompetePing

 print('start backresponsejboss ..  '+backresponsejboss.toString()+'' );

      return await getComplitingResponsePing(     backresponsejboss) ;///TODO    return compute(getComplitingResponse ,backresponsejboss  );
    //return     compute(getComplitingResponsePing,backresponsejboss)  ;///TODO    return compute(getComplitingResponse ,backresponsejboss  );
  }

///TODO END  class
}





