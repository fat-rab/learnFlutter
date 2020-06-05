/*
 * @Author: your name
 * @Date: 2020-06-03 17:57:42
 * @LastEditTime: 2020-06-03 18:03:52
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\apiPages\statalessRoutePage.dart
 */
import 'package:flutter/material.dart';

class StatelessRoutePage extends StatelessWidget {
  final Map arguments;
  StatelessRoutePage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由传参'),
      ),
      body: Container(
        child: Text(this.arguments['title']),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
