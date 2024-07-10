
import 'dart:async';
import 'dart:convert';

import 'dart:typed_data' show Uint8List,Uint16List;
import 'dart:typed_data';
import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:logger/logger.dart';


import '../../../Businesslayer/Use case/Interfaces/InterfaceFuture.dart';
import '../../../Businesslayer/Use case/converts/GetConverts.dart';
import '../../../Businesslayer/Use case/decoding/getDecodingCallback.dart';
import '../../../Businesslayer/Use case/errors/Errors.dart';
import '../../entities/Entities1CMap.dart';




class FuturesDataFrom1cServer  implements InterfaceFutureResponse,InterfaceFutureSelfData  {

  //TODO получаем данные self-data
  @override
  Future<Response> getDownloadJsonMaps({required Uri url, required int IdUser, required int UUID }) async {
    // TODO: implement getDownloadJsonMaps
      var getResponse;
    try{
      //TODO Paramerts
      print('url..$url'+'IdUser..$IdUser'+ 'UUID..$UUID');
      //TODO base64
      final   String basicAuth=     GetConverts().convertBase64(  user: 'dsu1Admin', password: 'dsu1Admin');

      print(' basicAuth  $basicAuth');

      //TODO главный запрос
      getResponse=  await http.get(
          url,
          headers: {
            'user':IdUser.toString(),
            'uuid':UUID.toString(),
            'authorization':'$basicAuth',
            "Access-Control-Allow-Origin": "*"
          }
      )
          .timeout(
        const Duration(seconds:20),
        onTimeout: () {
          // Time has run out, do what you wanted to do.
          return http.Response(' Timeout Error !!! ', 408); // Request Timeout response status code
        },
      )
          .catchError(
              (Object error) {
            print(' get ERROR $error  ');
          })  as Response;

     print('start getResponse ..  '+getResponse.toString()+'' );
      //TODO error
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
    return getResponse;
  }



 /* TODO  generator process
 TODO  of processing the
 TODO  incoming stream */
  @override
  Future<List<Map<String, List<Entities1CMap>>>> getGeneratorProcessSelfData({required  Response response1C}) {
    // TODO: implement getGeneratorMapCallBack
   late  Future<List<Map<String, List<Entities1CMap>>>> getJson1cSucces ;
    try{
      print('response1C.statusCode $response1C.statusCode');

     print('Result esponse1C.statusCode ..  '+response1C.statusCode.toString()+
          '');

      if (response1C.statusCode==200) {
        //TODO
        print('response1C.statusCode....$response1C.statusCode');

      //TODO  первая операция ДИнамик
        final  List<dynamic>  getListSeflData=       getDecodingCallback().   getResponseDecoderSelfData(response1C:response1C );
       print(' getListSeflData ..  '+getListSeflData.toString() );



        if (getListSeflData.isNotEmpty ) {
          //TODO получаем данные JSON
         print('getListSeflData.isNotEmpty ..$getListSeflData.isNotEmpty');

          ///TODO
          getJson1cSucces=Future(() => getListSeflData.map((model) => Entities1CMap().loopGeneratorMapPolo(  json:  model  )) .toList() );
          // TODO as List<Map<String, List<Entities1CMap>>> as List<Map<String, List<Entities1CMap>>>

         print(' getJson1cSucces ..  '+getJson1cSucces.toString() );
        }
       print('getListSeflData.isNotEmpty ..$getListSeflData.isNotEmpty' );
        
      } else {
        //TODO
       print(' response1C ..  '+response1C.toString() );
      }

      //TODO
     print(' response1C ..  '+response1C.toString() );
      //TODO error
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }

    return  getJson1cSucces ; //TODO  Future.value('fg' as FutureOr<List<Map<String, List<Entities1CMap>>>>)
  }








}




