/*
 * @Author: your name
 * @Date: 2020-06-01 15:05:41
 * @LastEditTime: 2020-06-03 15:56:17
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\main4.dart
 */
import 'package:flutter/material.dart';

import "../../data.dart";

class GridViewApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter demo')),
      body: HomeContainer(),
    );
  }
}

class HomeContainer extends StatelessWidget {
  //动态栅格布局
  Widget _getData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['image']),
          Text(
            listData[index]['text'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // GridView
    return GridView.builder(
      //需要将栅格属性写在gridDelegate里面 没有padding
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //一行Widget数量
        childAspectRatio: 1.2, //长宽比
        mainAxisSpacing: 10, //垂直间距
        crossAxisSpacing: 10, //左右边距
      ),
      itemCount: listData.length,
      itemBuilder: this._getData,
    );
  }
}
//静态栅格布局
// class HomeContainer extends StatelessWidget {
//   //自定义方法
//   List<Widget> _getData() {
//     var temList = listData.map((item) {
//       //column 竖直排列
//       return Container(
//           child: Column(
//         children: <Widget>[
//           Image.network(item['image']),
//           Text(item['text']),
//         ],
//       ));
//     });
//     return temList.toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // GridView
//     return GridView.count(
// crossAxisCount: 2, //一行Widget数量
// childAspectRatio: 1.2, //长宽比
// mainAxisSpacing: 10, //垂直间距
// crossAxisSpacing: 10, //左右边距
//       padding: EdgeInsets.all(10),
//       children: this._getData(),
//     );
//   }
// }
