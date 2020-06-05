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

    var itemList = OpenData.map((value){
      return ListTile(
        leading: Image.network(
          value["PicURL"],
          fit: BoxFit.cover,
        ),

        title: Text(value['Name']),
        subtitle: Text(value["FoodFeature"]),
      );
    });
    return itemList.toList();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView(
          children: _getData()
        )
    );
  }

}