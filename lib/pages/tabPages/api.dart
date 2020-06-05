/*
 * @Author: your name
 * @Date: 2020-06-03 13:40:52
 * @LastEditTime: 2020-06-05 15:58:55
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\tabPages\api.dart
 */
import 'package:flutter/material.dart';

class ApiPage extends StatefulWidget {
  ApiPage({Key key}) : super(key: key);

  @override
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  List _apiList = [
    {'title': '基础API', 'routeName': '/basicApi'},
    {'title': '图片API', 'routeName': '/imageApi'},
    {'title': 'listapi', 'routeName': '/listApi'},
    {'title': '栅格布局api', 'routeName': '/gridViewApi'},
    {'title': '组件api', 'routeName': '/componentApi'},
    {'title': '层叠', 'routeName': '/stackApi'},
    {'title': '卡片', 'routeName': '/cardApi'},
    {'title': '流体布局', 'routeName': '/wrapApi'},
    {'title': 'StatefulWidget', 'routeName': '/fulWidgetApi'},
    {'title': '路由', 'routeName': '/routerpage'},
    {'title': 'appBar', 'routeName': '/appBarApi'},
    {'title': 'btnApp', 'routeName': '/btnPage'},
    {'title': 'formApi', 'routeName': '/formPage'},
    {'title': 'dateApi', 'routeName': '/datePage'},
    {'title': '轮播图', 'routeName': '/swiperPage'}
  ];
  Widget _getPages(context, index) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      decoration: BoxDecoration(
        color: Colors.blue, //如果只设置颜色，可以不卸载decoration里面，如果写了decoration 则必须写在里面
        // border: Border.all(color: Colors.yellow, width: 2.0),
      ),
      child: Material(
        //INK可以实现装饰容器，实现矩形  设置背景色
        child: Ink(
          //设置背景  默认矩形
          color: Colors.blue,
          child: InkWell(
            //点击事件回调
            onTap: () {
              Navigator.pushNamed(context, this._apiList[index]['routeName']);
            },
            child: Container(
              child: ListTile(
                title: Text(this._apiList[index]['title']),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: this._apiList.length,
        itemBuilder: _getPages,
      ),
    );
  }
}
