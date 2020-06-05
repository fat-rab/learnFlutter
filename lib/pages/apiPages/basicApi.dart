/*
 * @Author: your name
 * @Date: 2020-05-29 09:31:32
 * @LastEditTime: 2020-06-03 15:50:50
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\apiPages\main1.dart
 */

//Material  UI框架
import 'package:flutter/material.dart';

class BasicApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter demo')),
      body: HomeContainer(),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

//中间文字组件
class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        // Container类似DIV
        child: Container(
      child: Text(
        '你好啊,flutter,你好啊,flutter',
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        textDirection: TextDirection.ltr, //文本从左往右流动
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.black,
          fontStyle: FontStyle.italic,
          //decoration: TextDecoration.lineThrough,
          decorationColor: Colors.white,
          letterSpacing: 5.0,
        ),
        //textScaleFactor: 2.0, 字体方法倍率
        //color: Color.fromRGBO(122, 232, 123, 0.5)
      ),
      height: 300.0,
      width: 200.0,
      decoration: BoxDecoration(
          color: Colors.pink, //背景颜色
          border: Border.all(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    ));
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('flutter demo')),
//         body: HomeContainer(),
//       ),
//       theme: ThemeData(primarySwatch: Colors.yellow),
//     );
//   }
// }

// //中间文字组件
// class HomeContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       // Container类似DIV
//       child: Text('nihao'),
//     );
//   }
// }
