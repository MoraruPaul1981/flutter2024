
import 'dart:async';


import 'package:commintprices/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logger/src/logger.dart';




///TODO class TEst
class Testing {

  Future<void> startingTest(Logger logger) async {

    try {
      SynchronousFuture<String>? synchronousFuture;

      Completer<int> completer = new Completer<int> ();


      //TODO





      Future<int> _onPressed() async {
            int result = await compute(loop, 100 );
            return result;
          }


      int result = await Future<int>.sync( () =>   _onPressed( ));
      logger.i('result'+result.toString());

      Future<int>.sync( () =>   _onPressed( )).then((value) {
            //TODO then
            logger.i('start value .. ');

            return value;

          }).catchError(
                  (Object error) {
                logger.i(' get ERROR $error  ');
              }
          )
              .whenComplete(() => {
            logger.i('start value ..  ' ,
            ),
          }
          );
    } catch (e) {
      print(e);
    }
    print(startingTest);
  }

//TODO Complete

  Future<void> startingTestCompleter(Logger logger) async {
    try {
      Completer<int> completer = new Completer<int> ();
      // Emulating a long running task
      completer.complete(compute(loop, 100 ));
      //TODO
      int ff= await  completer.future  ;
      logger.i('start value ..$ff' );

    } catch (e) {
      print(e);
    }
    print(startingTest);
  }




  int loop(int val) {
    int count = 0;
    try {

      for (int i = 1; i <= val; i++) {
            count += i;
          }
    } catch (e) {
      print(e);
    }
    return count;
  }

}