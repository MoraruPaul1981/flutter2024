



import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:commintprices/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/src/logger.dart';


import '../../../data/entities/Entities1CMap.dart';
import 'Intarface/IntafaceSuccessData.dart';

class   ChildWidgetSuccessData  extends StatelessWidget implements IntafaceTransformationSuccessData {

  @override
  late Logger logger;
  @override
  late AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot;
  @override
  late BuildContext context;
  @override
  late List<Map<String, List<Entities1CMap>>> receiveddatafromC1;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    logger.i('snapshot ..  '+snapshot.toString()+'' );


    //TODO первая трансформацйия пришедших Данных
    receiveddatafromC1= firstTransformationionofincomingData( snapshot: snapshot,logger: logger);
    logger.i('receiveddatafromC1 ..  '+receiveddatafromC1!.length.toString() );

    ////TODO сам виджет
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0), // here the desired height
        child:
        AppBar(
          leading: new Icon(Icons.live_tv),
          backgroundColor: Colors.white,
          title: Padding(padding: EdgeInsets.all(1.0),
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText('Согласования', textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,),textAlign:  TextAlign.center,
                    colors:[Colors.black,Colors.grey,Colors.white,Colors.black] ),],

              pause: Duration(microseconds: 10),
              isRepeatingAnimation: true,
              repeatForever: false,
            ),
          ),
          centerTitle: true,
          elevation: 500,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,


        children: <Widget>[
          //TODO строчки с обьектами
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    margin: new EdgeInsets.only( left: 10,top:5,right: 10,bottom: 2),
                    height: 35,
                    child: SearchBar(
                      hintText: 'Поиск',
                    ),
                  ),
                ),
              ),
            ],
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ConstrainedBox(
                constraints: new BoxConstraints(
                  minHeight: 550.0,
                  maxHeight: 700.0,
                ),

                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection:
                  Axis.vertical, // Axis.horizontal for horizontal list view.
                  itemCount: receiveddatafromC1!.length ,
                  itemBuilder: (context, index) {
                    //TODO get Получаем данные для Заполения LustView

                    //TODO вторая трасформайция пришедших данных
                    Map<String, List<Entities1CMap>>   getsecondConversionData=secondConversionData(receiveddatafromC1:receiveddatafromC1,logger: logger,index:index);
                    logger.i('getsecondConversionData ..  '+getsecondConversionData!.length.toString() );

                    //TODO третья  трасформайция пришедших данных
                    List<Entities1CMap> getthirdtransformationData= thirdtransformationData( thirdtransformationData:getsecondConversionData, logger:logger ,index:index);
                    logger.i('getthirdtransformationData ..  '+getthirdtransformationData!.length.toString() );

                    //TODO четвертая  трасформайция пришедших данных
                    String? getfourthtransformation= fourthtransformation(  getfourthtransformation:getthirdtransformationData,logger:logger);
                    logger.i('getfourthtransformation ..  '+getfourthtransformation!.length.toString() );



                    final user = '86';
                    final UUID ='3333333';




                    //TODO
                    return Column(
                      children: [
                        Card(
                          semanticContainer: true,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Colors.grey[100],
                          elevation: 3.0,
                          margin: EdgeInsets.all(5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: ListTile(
                            leading: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: const CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.grey,
                                child:
                                Icon(CupertinoIcons.airplane),//TODO Icons.macro_off
                              ),
                            ),
                            subtitle: Text(""),
                            trailing: Icon(Icons.more_vert),
                            onTap: () {
                              print('object');
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(user.trim().toLowerCase() +
                                    "\n" +
                                    "uuid-> " +
                                    UUID),
                              ));
                            },
                            title:
                            SizedBox(
                              height: 45,
                              child: Center(
                                child: Text(
                                  getfourthtransformation, //TODO       list[index].CFO.toString().trim(),
                                  style: TextStyle(
                                    height: 2,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.7),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Colors.grey[300],
                                    decorationStyle: TextDecorationStyle.wavy,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),





















          //TODO КНОПКИ ВНИЗУ     //TODO КНОПКИ ВНИЗУ     //TODO КНОПКИ ВНИЗУ

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  margin: new EdgeInsets.only( left: 5,top: 0,right: 5,bottom: 0),
                  height: 60,
                  clipBehavior: Clip.hardEdge,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    // color: Theme.of(context).backgroundColor,
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey[300]!,
                      width: 0.5,
                    ),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),

                  child: NavigationBar(
                    onDestinationSelected: (int index) {
                      print('NavigationBar.. выбор index ..$index');
                    },
                    indicatorColor: Colors.grey,
                    selectedIndex: 1,
                    destinations: const <Widget>[
                      NavigationDestination(
                        selectedIcon: Icon(Icons.home),
                        icon: Icon(Icons.home_outlined),
                        label: 'Назад',
                      ),
                      NavigationDestination(
                        selectedIcon: Icon(Icons.data_usage ),
                        icon: Icon(Icons.data_usage_outlined),
                        label: 'Данные',
                      ),
                      NavigationDestination(
                        selectedIcon: Icon(Icons.maps_ugc),
                        icon: Icon(Icons.maps_ugc_outlined),
                        label: 'Расширения',
                      ),
                      NavigationDestination(
                        selectedIcon: Icon(Icons.accessibility_new),
                        icon: Icon(Icons.accessibility_new_sharp),
                        label: 'Начисления',
                      ),
                    ],
                  ),

                ),
              ),
            ],
          ),

        ],
      ),

    );
  }


//TODO: конструктор
  ChildWidgetSuccessData(Key? key,this.logger, this.snapshot, this.context,
      this.receiveddatafromC1) :super (key:key);




//TODO  Первоя Трансформация ДАнных
  @override
  List<Map<String, List<Entities1CMap>>> firstTransformationionofincomingData(
      {required  AsyncSnapshot<List<Map<String, List<Entities1CMap>>>> snapshot,
        required Logger logger}) {
    //TODO
    List<Map<String, List<Entities1CMap>>>   getfirstTransformationionofincomingData=[];
    //TODO
    if (!snapshot.hasError && snapshot.hasData) {
      try{
        //TODO первое получение Данных
        getfirstTransformationionofincomingData=  snapshot.data!.cast<Map<String, List<Entities1CMap>>>().toList();

        logger.i('get getfirstTransformationionofincomingData ..  '+getfirstTransformationionofincomingData.toString() );

        //TODO error
      } catch (e, stacktrace) {
        print(' get ERROR $e get stacktrace $stacktrace ');
      }
    }
    return getfirstTransformationionofincomingData;

  }




  //TODO  Вторая Трансформация ДАнных
  @override
  Map<String, List<Entities1CMap>> secondConversionData({
    required List<Map<String, List<Entities1CMap>>> receiveddatafromC1,
    required Logger logger,
    required int index}) {
    // TODO: implement secondConversionData
    Map<String, List<Entities1CMap>>  getsecondConversionData={};
    try{
      //TODO первое получение Данных
      getsecondConversionData=  receiveddatafromC1.elementAt(index) as     Map<String, List<Entities1CMap>>  ;
      logger.i('get getsecondConversionData ..  '+getsecondConversionData.toString() );
      //TODO error
    } catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }
    return getsecondConversionData;
  }



  //TODO  Третья  Трансформация ДАнных
  @override
  List<Entities1CMap> thirdtransformationData({required Map<String, List<Entities1CMap>> thirdtransformationData, required Logger logger, required int index}) {
    // TODO: implement thirdtransformationData
    List<Entities1CMap> childredRowCommintPrices=[];
    try{
      childredRowCommintPrices=   thirdtransformationData.values.single;
      //TODO
      String Key=   thirdtransformationData.keys.single;

      logger.i('get childredRowCommintPrices ..  '+childredRowCommintPrices.toString()+ '' );
    } catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }
    return childredRowCommintPrices;
  }




  //TODO  Четвертый   Трансформация ДАнных
  @override
  String? fourthtransformation({required List<Entities1CMap> getfourthtransformation, required Logger logger}) {
    // TODO: implement fourthtransformation
    String? getCfo;
    try{
      getCfo=    getfourthtransformation.elementAt(0).CFO as String ;
      logger.i('get getCfo ..  '+getCfo.toString() );
    } catch (e, stacktrace) {
      print(' get ERROR $e get stacktrace $stacktrace ');
    }
    return getCfo ;
  }

}



























