import 'package:flutter/material.dart';
import 'res/listData.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("動態ListView"),
        ),
        body: HomeContent(),
      ),
    );
  }

}
class HomeContent extends StatelessWidget{
  //自定義一個方法
  List<Widget> _getData(){
    List<Widget> list = new List();
    for(int i =0 ; i <20; i++){
      list.add(
        ListTile(
          title: Text("我是一個動態list:$i"),
        )
      );
    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
        children: this._getData()
      )
    );
  }

}