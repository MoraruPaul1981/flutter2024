
import 'package:http/http.dart';
import 'package:logger/logger.dart';

import '../../../Datalayer/entities/Entities1CMap.dart';




abstract  class InterfaceFutureResponse {
  //TODO
  Future<Response?> getDownloadJsonMaps({ required  Uri   url, required int IdUser, required int UUID }) ;
}



abstract  class InterfaceFutureSelfData {
  //TODO
  Future<List<Map<String, List<Entities1CMap>>>>  getGeneratorProcessSelfData({required  Response response1C }) ;
}


abstract  class InterfaceCallBack {
  //TODO

  //TODO ping
  Future<String> CallBackPing(Uri parsedUrl,BigInt Uuid,int IdUser) ; //TODO ping

  //TODO self-data
  Future<List<Map<String, List<Entities1CMap>>>> CallBackSelfData(String? IspingOtServer ,int IdUser,BigInt Uuid);

  //TODO когад пришли данные #2
  Future<List<Map<String, List<Entities1CMap>>>> twoStepJsonOt1c(String IspingOtServer );

  //TODO когад пришли данные #1
  Future<String> oneStepPing(Uri parsedUrl );
}