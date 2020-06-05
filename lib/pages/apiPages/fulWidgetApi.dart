/*
 * @Author: your name
 * @Date: 2020-06-03 11:01:03
 * @LastEditTime: 2020-06-03 15:59:39
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\main9.dart
 */
//Material  UI框架
import 'package:flutter/material.dart';

class FulWidgetApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter demo')),
      body: HomeContainer(),
    );
  }
}

//StatelessWidget  无状态组件
//StatefulWidget   有状态组件，通俗的讲们就是需要改变页面数据的时候使用有状态组件
class HomeContainer extends StatefulWidget {
  HomeContainer({Key key}) : super(key: key);
  @override
  _HomeContainerState createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 500,
        child: Column(
          children: <Widget>[
            Chip(
              label: Text('${this.countNum}'),
            ),
            RaisedButton(
                child: Text('点击'),
                onPressed: () {
                  setState(() {
                    //如果想要让页面发生变化，必须使用setState,只能在statefulWidget使用
                    this.countNum++;
                  });
                  print(this.countNum);
                })
          ],
        ),
      ),
    );
  }
}
