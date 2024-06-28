
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import '../../../BI/errors/Errors.dart';
import '../CubitLoginPassword.dart';
import '../functions/FunctionsWidgetLoginAndPassword.dart';




class StatesWidgetsLoginPassword {

  /* //TODO:переменные
 *     */
  late  Logger logger;
  late  BuildContext context;
  late Key? key;
  late FunctionsWidgetLoginAndPassword   functionsWidgetLoginAndPassword ;

/*
 //TODO:login GET*/
  final _loginicController = TextEditingController();
  /*
 //TODO:password GET*/
  final _passwordController = TextEditingController();

  ///TODO  аунтификация
  StatesWidgetsLoginPassword({ required this.logger,  required this.context,  required this.key});


  ////TODO:Компонеты Виджета  КОД

  Widget widgetcircleAvatar() {
    // TODO: implement build
    //TODO:widgetcircleAvatar
    return Card(
      elevation: 10,
      shadowColor: Colors.white12,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          side: BorderSide(width: 1, color: Colors.white12)),
      margin: const EdgeInsets.only(left: 0, top: 100, right: 0, bottom: 0),
      color: Colors.white12,
      child: const CircleAvatar(
          radius: 48,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage(
              'images/imageandroid/imageforpassword.jpg'),
          child: Stack(
              children: [
                Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white60,
                        child: Icon(Icons.lock,
                            color: Colors.black) // change this children
                    )
                )
              ]
          )
      ),
    );
  }




  Widget widgetLine( ) {
    // TODO: implement build
    //TODO: widgetLine
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(child:
        Container(
          margin: const EdgeInsets.only(
              left: 15, top: 10, right: 15, bottom: 0),
          child: Divider(
            thickness: 1,
            color: Colors.grey[200],
          ),
        )
        )
      ],
    );
  }







  Widget widgetnameText( ) {
    // TODO: implement build
    //TODO: widgetnameText
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(
                left: 0, top: 10, right: 0, bottom: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),),
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child:
              Text(
                'ООО «Союз Автодор»',
                style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w300,), textAlign: TextAlign.center,
              ),
            )
        )
      ],
    );
  }



  Widget widgetLogin( ) {
    // TODO: widgetLogin
    return Card(
      elevation: 5,
      shadowColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          side: BorderSide(width: 5, color: Colors.white10)),
      margin: const EdgeInsets.only(left: 30, top: 1, right: 30, bottom: 10),
      color: Colors.white,
      child: ListTile(
        leading:
        Container(
          padding: EdgeInsets.only(left: 1, top: 1, right: 1, bottom: 1),
          child: SizedBox(
            height: 45,
            child: Icon(
              Icons.account_circle,
              color: Colors.blue[300],
              size: 20.0,
            ),
          ),
        ),
        title: Container(
          padding: EdgeInsets.only(left: 1, top: 1, right: 1, bottom: 1),
          child: SizedBox(
            height: 45,
            child: TextField(
              controller: _loginicController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'логин',
                //'логин',
                //'логин'
                hintStyle: TextStyle(
                    fontSize: 16, color: Colors.grey.shade600),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(5),
                fillColor: Colors.grey.shade50,
              ),
              onTap: () {
                logger.i('IspingOtServer ..  ');
              },
              onChanged: (setlogin) {
                /*     //TODO"
                    set  setlogin*/
                logger.i('setlogin..$setlogin');

              },
            ),
          ),
        ),
      ),
    );
  }


  Widget widgetPasswrord ( ) {
    //TODO: widgetPasswrord
    return Card(
      elevation: 5,
      shadowColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          side: BorderSide(width: 5, color: Colors.white10)),
      margin: const EdgeInsets.only(left: 30, top: 1, right: 30, bottom: 10),
      color: Colors.white,
      child:
      ListTile(
        leading:
        Container(
          padding: EdgeInsets.only(left: 1, top: 1, right: 1, bottom: 1),
          child: SizedBox(
            height: 45,
            child: Icon(
              Icons.password,
              color: Colors.blue[300],
              size: 20.0,
            ),
          ),
        ),
        title: Container(
          padding: EdgeInsets.only(left: 1, top: 1, right: 1, bottom: 1),
          child: SizedBox(
            height: 45,
            child: TextField(
              controller: _passwordController,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText:  'пароль',//TODO:  'пароль'

                ///TODO: 'пароль'
                hintStyle: TextStyle(
                    fontSize: 16, color: Colors.grey.shade600),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(5),
                fillColor: Colors.grey.shade50,
              ),
              obscureText: true,
              obscuringCharacter: "*",
              onTap: () {
                logger.i('   onTap: ..  ');
              },
              onChanged: (setpassword) {
                /*     //TODO"
                    set  setpassword*/
                logger.i('setpassword..$setpassword');

              },
            ),
          ),
        ),

      ),
    );

  }







  Widget widgetcircularProgress() {
    // TODO: implement build
    return Card(
      elevation: 10,
      shadowColor: Colors.white12,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          side: BorderSide(width: 1, color: Colors.white12)),
      margin: const EdgeInsets.only(left: 0, top: 15, right: 0, bottom: 5),
      color: Colors.white12,

      child: const CircularProgressIndicator(
        backgroundColor: Colors.white12,
        strokeWidth: 4.0,color: Colors.blue,
      ),


    );
  }







  Widget widgetFloatingActionButton( ) {
    //TODO: widgetFloatingActionButton
     CubitLoginPassword   cubitLoginPassword = CubitLoginPassword(0);
    //TODO: CUbit
    return   BlocListener<CubitLoginPassword,int>(
      bloc:cubitLoginPassword ,
      listenWhen:  (previous, current) {

        return previous<=current;
        },
        listener: (context,state){
          cubitLoginPassword.emit(0);
          logger.i('triggerStatusChange .....$state');
        },
      child: BlocBuilder<CubitLoginPassword,int> (
        bloc:cubitLoginPassword ,
        buildWhen:  (previous, current) {

          return previous<=current;
        },
        builder: (context,state){
          // return widget here based on BlocA's state
          return Container(
            margin: const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 50),
            padding: const EdgeInsets.all(2.0),
            child: FloatingActionButton(
              autofocus: true,
              focusElevation: 5,
              highlightElevation: 50,
              onPressed: () {

               // cubitLoginPassword = CubitLoginPassword(0);


                functionsWidgetLoginAndPassword=new FunctionsWidgetLoginAndPassword(  );
                /*//TODO:  метод запуск аунтификации логин и пароль
          *    */
                startingAyntificationLogingAdnPassword(state,context,    cubitLoginPassword);

                logger.i('triggerStatusChange .....$state');

               // cubitLoginPassword.close();



              },
              backgroundColor: Colors.blue[300],
              tooltip: 'Вход !!!',
              elevation: 15,
              splashColor: Colors.grey,
              child: const Icon(
                CupertinoIcons.arrow_right, color: Colors.white, size: 29,),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0))
              ),
            ),
          );
        },
      ),
    );
    ////TODO: END  Container
  }





/*//TODO:  метод запуск аунтификации логин и пароль
*    */
  void startingAyntificationLogingAdnPassword(int state ,BuildContext context ,CubitLoginPassword   cubitLoginPassword) {
    try{
      functionsWidgetLoginAndPassword.clickFloatingButtonForGetLoginAndPassword(state, _loginicController, _passwordController,context,    cubitLoginPassword);
      logger.i('state .....${state}  _loginicController .....${_loginicController} _passwordController .....${_passwordController} ');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
  }







  void completeBlocConsumerLoginandPassword(int state,  BuildContext context) {
    try{
      switch (state){
      /* TODO: какой статус пришел от Cubit login and password
      *   */
        case 0:
          logger.i('state .....$state');

        case 10:
          logger.i('state .....$state');

        default:
          logger.i('state .....$state');
      }

      logger.i('state .....$state');
      //TODO error
    }   catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace );
    }
  }



}

//TODO : круглая пнопка снизу ОК





