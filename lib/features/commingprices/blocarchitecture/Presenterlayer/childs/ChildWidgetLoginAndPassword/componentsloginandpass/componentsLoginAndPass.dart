
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import '../../../../Businesslayer/Blocs/blocCounter/BlocCreatecounter.dart';
import '../../../../Businesslayer/Blocs/blocCounter/BlocStatecounter.dart';


class widgetcircleAvatar extends StatelessWidget {
  Logger logger;

  widgetcircleAvatar(this.logger, {super.key});

  //TODO:
  @override
  Widget build(BuildContext context) {
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
}


class widgetnameText extends StatelessWidget {
  Logger logger;

  widgetnameText(this.logger, {super.key});

//TODO:
  @override
  Widget build(BuildContext context) {
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
}


class widgetLogin extends StatelessWidget {
  Logger logger;

  widgetLogin(this.logger, {super.key});

//TODO:
  @override
  Widget build(BuildContext context) {
    // TODO: widgetLogin
    return Card(
      elevation: 5,
      shadowColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          side: BorderSide(width: 5, color: Colors.white10)),
      margin: const EdgeInsets.only(
          left: 20, top: 1, right: 20, bottom: 10),
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
            ),
          ),
        ),
      ),
    );
  }
}


class widgetPasswrord extends StatelessWidget {
  Logger logger;

  widgetPasswrord(this.logger, {super.key});

  //TODO:
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //TODO: widgetPasswrord
    return BlocBuilder<BlocCreatecounter, int>(
  builder: (context, state) {
    return Card(
      elevation: 5,
      shadowColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          side: BorderSide(width: 5, color: Colors.white10)),
      margin: const EdgeInsets.only(left: 20, top: 1, right: 20, bottom: 10),
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
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: state.toString(),///TODO: 'пароль'
                hintStyle: TextStyle(fontSize: 16, color: Colors.grey.shade600),
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
              onChanged: (content) {
                logger.i(' onChanged: ..  ');
              },
            ),
          ),
        ),

      ),
    );
  },
);
  }
}


class widgetLine extends StatelessWidget {
  Logger logger;

  widgetLine(this.logger, {super.key});

//TODO:
  @override
  Widget build(BuildContext context) {
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
}


//TODO : круглая пнопка снизу ОК

class widgetFloatingActionButton extends StatelessWidget {
  Logger logger;
//TODO: Конструктор кнопки Fload  Крглой
  widgetFloatingActionButton(this.logger, {super.key});
  //TODO : кнопка Floadt Круглая большая
  @override
  Widget build(BuildContext context) {
    //TODO: widgetFloatingActionButton
    //TODO: bloc
    return Container(
          margin: const EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 50),
          padding: const EdgeInsets.all(2.0),
          child: FloatingActionButton(
            autofocus: true,
            focusElevation: 5,
            highlightElevation: 50,
            onPressed: () {
              //TODO: Нажатие на Круглую кнопку Float
              BlocProvider.of<BlocCreatecounter>(context).add(CounterIncEventcounter());
              logger.i(' After  widgetFloatingActionButton  CLick FloatingActionButtonLocation  onPressed ');
            },
            backgroundColor: Colors.blue[300],
            tooltip: 'Повторное получение !!!',
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




