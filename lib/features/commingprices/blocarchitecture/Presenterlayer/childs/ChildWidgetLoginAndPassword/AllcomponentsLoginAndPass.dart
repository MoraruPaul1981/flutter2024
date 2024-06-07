
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import '../../../Businesslayer/Cubits/bloccubitInt/cubitLoginPassword.dart';
import '../../../Businesslayer/codewidgets/BI_ChildWidgetLoginAndPassword.dart';
import '../../../Businesslayer/errors/Errors.dart';


class AllcomponentsLoginAndPass {
 late  Logger logger;
 late  BuildContext context;
 late Key? key;
/*
 //TODO:login GET*/
 late String login;
 String  get getlogin=>login;

  /*
 //TODO:password GET*/
  late String password;
  String  get getpassword=>password;

 AllcomponentsLoginAndPass({ required this.logger,  required this.context,  required this.key});

/*
 //TODO:logon SET */
 void  setLogin(String setlogin ){
   try {
     login=setlogin;
     print('login....$login......setlogin...$setlogin  getlogin...$getlogin');
   } catch (e, stacktrace) {
     print(e);
     //TODO: Gradle Error
     Errors errors=Errors();
     errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
   }
 }

  /*
 //TODO:password  SET */
  void  setPassword(String setpassword ){
    try {
      password=setpassword;
      print('password....$password......setpassword...$setpassword  getpassword...$getpassword');
    } catch (e, stacktrace) {
      print(e);
      //TODO: Gradle Error
      Errors errors=Errors();
      errors.writerError(e: e as Exception, stacktrace: stacktrace as StackTrace);
    }
  }


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
               setLogin(setlogin);
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
               setPassword(setpassword);
               logger.i('setpassword..$setpassword');

             },
           ),
         ),
       ),

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




 Widget widgetFloatingActionButton( ) {
   //TODO: widgetFloatingActionButton
   BI_ChildWidgetLoginAndPassword  bi_childWidgetLoginAndPassword=BI_ChildWidgetLoginAndPassword(context: context,logger: logger,key: key);
   //TODO: bloc
   return   BlocConsumer<CubitLoginPassword,int>(
     listener: (context, state) {
       // do stuff here based on BlocA's state

     // TODO: Реакйция на смегу state Login and Password
       if (state==0) {
         //TODO: дизайн обработка смены статуса
         bi_childWidgetLoginAndPassword.callbAckreactiontosomeonewhocameStatus(state: state,context: context);
         logger.i('state...$state getlogin ..$getlogin');
       }else{
         //TODO: переход На реально работающее приложение
         bi_childWidgetLoginAndPassword.   afterSuccessfullaunchthemainprogram(state: state,context: context);
         logger.i('state...$state getlogin ..$getlogin');
       }
       //TODO END proccesting state
     },
     builder: (context, state) {
       // return widget here based on BlocA's state
       return Container(
         margin: const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 50),
         padding: const EdgeInsets.all(2.0),
         child: FloatingActionButton(
           autofocus: true,
           focusElevation: 5,
           highlightElevation: 50,
           onPressed: () {
             //TODO: Bloc change   Отправляем запрос а получения PublicID на основе логина и  пароля
             if (getlogin.length>3 && getpassword.length>3) {
               //TODO: параметры запроса
               Map<String, dynamic> parametrgetPublicId={};
               parametrgetPublicId.putIfAbsent('getlogin', getlogin as Function());
               parametrgetPublicId.putIfAbsent('getpassword', getpassword as Function());
               //TODO:сам запрос
               context.read<CubitLoginPassword>().getbasedonloginandpasswordPublicID(parametrgetPublicId:parametrgetPublicId);

               logger.i('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                   '  getlogin.length..$getlogin.length   getpassword.length.....$getpassword.length');
             } else {

               //TODO: дизайн обработка смены статуса
               bi_childWidgetLoginAndPassword.calldoesnottriggerActionNoPoginandPassword(state: state,context: context);

               logger.i('  CLick FloatingActionButtonLocation  onPressed  Logon и Парол'
                   '  getlogin.length..$getlogin.length   getpassword.length.....$getpassword.length');
             }
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
       ////TODO: END  Container

     },
   );
   ////TODO: END  Container
 }








/* //TODO:
*  END  class AllcomponentsLoginAndPass {
* */
}












//TODO : круглая пнопка снизу ОК





