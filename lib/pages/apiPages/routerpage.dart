/*
 * @Author: your name
 * @Date: 2020-06-03 14:46:59
 * @LastEditTime: 2020-06-04 09:14:30
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\routerpage.dart
 */
import 'package:flutter/material.dart';

class RouterPage extends StatelessWidget {
  final String title;
  RouterPage({Key key, this.title='未传参'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由传参'),
      ),
      body: Container(
        child: Text(this.title),
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
