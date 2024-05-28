
import 'package:http/http.dart';
import 'package:logger/logger.dart';
import '../../../../entities/Entities1CMap.dart';



abstract  class InterfaceFutureResponse {
  //TODO
  Future<Response> getDownloadJsonMaps({ required  Uri   url, required int IdUser, required int UUID,required Logger logger}) ;
}






abstract  class InterfaceFutureSelfData {
  //TODO
  Future<List<Map<String, List<Entities1CMap>>>>  getGeneratorProcessSelfData({required  Response response1C,required Logger logger}) ;
}




abstract  class InterfaceCallBack {
  //TODO
  //TODO ping
  Future<String> CallBackPing(Uri parsedUrl,   Logger logger ) ; //TODO ping

  //TODO self-data
  Future<List<Map<String, List<Entities1CMap>>>> CallBackSelfData(String? IspingOtServer, Logger logger,int IdUser,BigInt Uuid);


  //TODO когад пришли данные #2
  Future<List<Map<String, List<Entities1CMap>>>> twoStepJsonOt1c(String IspingOtServer, Logger logger);

  //TODO когад пришли данные #1
  Future<String> oneStepPing(Uri parsedUrl, Logger logger);
}