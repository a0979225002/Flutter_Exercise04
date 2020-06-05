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

  List list = new List();
  HomeContent(){
    for(int i =1; i<=20 ; i++){
      list.add("$i.我是數據$i");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: this.list.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: Image.network(OpenData[index]["PicURL"]),
            title: Text(this.list[index]),//上方自訂的數據
            subtitle: Text(OpenData[index]["Name"]),//抓OpenData的數據
            
          );
        },
    );
  }

}