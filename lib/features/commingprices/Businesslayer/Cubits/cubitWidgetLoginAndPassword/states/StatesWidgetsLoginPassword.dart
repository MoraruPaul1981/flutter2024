
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import '../CubitLoginPassword.dart';
import '../EmitsLoginPassword.dart';
import '../functions/FunctionsWidgetLoginAndPassword.dart';
import 'BL_statesWidgetsLoginPassword.dart';




class StatesWidgetsLoginPassword {

  /* //TODO:переменные
 *     */
  late  Logger logger;
  late  BuildContext context;
  late Key? key;

  ///TODO  аунтификация
  StatesWidgetsLoginPassword({ required this.logger,  required this.context,  required this.key});
/*  //TODO:*/
   TextEditingController   _loginicController = TextEditingController();
     TextEditingController   _passwordController= TextEditingController();

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
    return Visibility(
      visible: false,
      child: Card(
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


      ),
    );
  }







  Widget widgetFloatingActionButton( ) {
    //TODO: widgetFloatingActionButton

/*    TODO: init Cubit  Главня ссылка на класс Кубит
*      */
     CubitLoginPassword   cubitLoginPassword = CubitLoginPassword(0);
     /*    TODO: init ссылка бизнес логика для States
*      */

    //TODO: CUbit
    return   BlocListener<CubitLoginPassword,int>(
      bloc:cubitLoginPassword ,
      listenWhen:  (previous, current) {
        logger.i('current .....${current}  previous .....${previous} ');
        return previous<=current;
        },
        listener: (context,state){

      /*  TODO: Возвращение из Cubit стате*/
          BL_statesWidgetsLoginPassword(  logger: logger,context:context).   completeBlocConsumerLoginandPassword(state);

        /*TODO: RESET статус */
          EmitsLoginPassword(cubitLoginPassword).  resetEmitCubitLoginPassword(cubitLoginPassword);

          logger.i('triggerStatusChange .....$state');
        },
      child: BlocBuilder<CubitLoginPassword,int> (
        bloc:cubitLoginPassword ,
        buildWhen:  (previous, current) {
          logger.i('current .....${current}  previous .....${previous} ');
          return previous==0;
        },
        builder: (context,state){
          // TODO:  return widget here based on BlocA's state  Создание самой Крушлой Кнопки
        return  getFloatingAction (state,cubitLoginPassword);

        },
      ),
    );
    ////TODO: END  Container
  }







/*  //TODO: Сама крглая кнопка
*      */

 Widget getFloatingAction (int state,CubitLoginPassword   cubitLoginPassword){

  return Container(
  margin: const EdgeInsets.only(left: 5, top: 20, right: 5, bottom:20),
  padding: const EdgeInsets.all(2.0),
  child: FloatingActionButton(
  autofocus: true,
  focusElevation: 5,
  highlightElevation: 50,
  onPressed: () {

  /* //TODO: НАжимсаем на кнопку Кругдую запустить аунтифтикайция пользователя
               *     */
  BL_statesWidgetsLoginPassword(  logger: logger,context:context).    startingAyntificationLogingAdnPassword(state,context,
      cubitLoginPassword,
  loginicController:_loginicController ,  passwordController:_passwordController );

  logger.i('triggerStatusChange .....$state');


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

}

}

//TODO : круглая пнопка снизу ОК





