/*
 * @Author: your name
 * @Date: 2020-06-04 15:13:53
 * @LastEditTime: 2020-06-04 16:35:28
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\apiPages\btn.dart
 */
import 'package:flutter/material.dart';

class BtnPage extends StatelessWidget {
  const BtnPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('btnApi'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Column(children: <Widget>[
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          elevation: 10, //阴影
          child: Text('普通按钮'),
          onPressed: () {}, //onPressed:null  禁用按钮
        ),
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text('圆角按钮'),
          onPressed: () {}, //onPressed:null  禁用按钮
        ),
        Container(
          height: 80,
          child: RaisedButton(
            color: Colors.blue,
            child: Text('圆角按钮'),
            shape: CircleBorder(
              side: BorderSide(color: Colors.white),
            ),
            onPressed: () {},
          ),
        ),
        Container(
          width: 100,
          height: 50,
          child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('长宽按钮'),
            onPressed: () {}, //onPressed:null  禁用按钮
          ),
        ),
        RaisedButton.icon(
          icon: Icon(Icons.search),
          label: Text('图标按钮'),
          onPressed: () {},
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('宽度自适应按钮'),
                onPressed: () {}, //onPressed:null  禁用按钮
              ),
            )
          ],
        ),
      ]),
    );
  }
}
