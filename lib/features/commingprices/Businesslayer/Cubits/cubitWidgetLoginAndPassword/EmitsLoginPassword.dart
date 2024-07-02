
import '../../BI/errors/Errors.dart';
import 'CubitLoginPassword.dart';




class EmitsLoginPassword  {


  late CubitLoginPassword cubitLoginPassword;

  EmitsLoginPassword(this.cubitLoginPassword);


  /* TODO:  EMIT() просто ответы   визуальные для обратно  UI
 /* TODO:  EMIT() просто ответы   визуальные для обратно  UI
 *   */
 *   */
  /* TODO:  EMIT() просто ответы   визуальные для обратно  UI
 /* TODO:  EMIT() просто ответы   визуальные для обратно  UI
 *   */
 *   */



  void resetEmitCubitLoginPassword( CubitLoginPassword   cubitLoginPassword  ) {
    try{
    /*  //TODO:*/
      cubitLoginPassword.emit(0);
      print('resetEmitCubitLoginPassword .....${cubitLoginPassword} ...         cubitLoginPassword.isClosed ,,....      ${cubitLoginPassword.isClosed} ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
  }






  Future<void> emitBackUIEmptyLoginAndPassword( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      cubitLoginPassword. emit(1);
      print('  callBackUIEmptyLoginAndPassword  emit ${cubitLoginPassword.emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }





  Future<void> emitBackUIDontServerStatus( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      cubitLoginPassword. emit(2);
      print('  callBackUIDontServerStatus  emit ${cubitLoginPassword.emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }



  Future<void> emitBackUIErrorPublicId( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      cubitLoginPassword. emit(3);
      print('  callBackUISuccessAuntifcation  emit ${cubitLoginPassword.emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }










/*///TODO:  Успешные Future Logon and Password
*/
  /*///TODO:  Успешные Future Logon and Password
*/

  Future<void> emitBackUISuccessServerStatus( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      cubitLoginPassword.emit(21);
      print('  callBackUISuccessServerStatus  emit ${cubitLoginPassword.emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }



  Future<void> emitBackUISuccessPublicId( ) async {
    // TODO: implement getbasedonloginandpasswordPublicID
    try{
      cubitLoginPassword. emit(200);
      print('  callBackUISuccessAuntifcation  emit ${cubitLoginPassword.emit}  ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }


}






