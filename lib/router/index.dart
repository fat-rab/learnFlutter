/*
 * @Author: your name
 * @Date: 2020-06-03 16:50:36
 * @LastEditTime: 2020-06-05 15:59:06
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\router\index.dart
 */


import 'package:flutter/material.dart';
import 'package:helloword/pages/apiPages/appBar.dart';

import '../tab.dart';

import '../pages/apiPages/basicApi.dart';
import '../pages/apiPages/imageApi.dart';
import '../pages/apiPages/listApi.dart';
import '../pages/apiPages/gridViewApi.dart';
import '../pages/apiPages/componentApi.dart';
import '../pages/apiPages/stackApi.dart';
import '../pages/apiPages/cardApi.dart';
import '../pages/apiPages/wrapApi.dart';
import '../pages/apiPages/fulWidgetApi.dart';
import '../pages/apiPages/routerpage.dart';
import '../pages/apiPages/statalessRoutePage.dart';
import '../pages/apiPages/statefulRoutePage.dart';
import '../pages/user/register1.dart';
import '../pages/user/register2.dart';
import '../pages/apiPages/btn.dart';
import "../pages/apiPages/form.dart";
import '../pages/apiPages/dateApi.dart';
import '../pages/apiPages/swiperPage.dart';

final Map routes = {
  '/': (context) => Tabs(), //基础api
  '/basicApi': (context) => BasicApi(), //基础api
  '/imageApi': (context) => ImageApi(), //imageapi
  '/listApi': (context) => ListApi(), //listapi
  '/gridViewApi': (context) => GridViewApi(), //栅格布局api
  '/componentApi': (context) => ComponentApi(), //pddding column row expended
  '/stackApi': (context) => StackApi(), //层叠
  '/cardApi': (context) => CardApi(), //卡片
  '/wrapApi': (context) => WrapApi(), //流体布局
  '/fulWidgetApi': (context) => FulWidgetApi(), //StatefulWidget
  '/routerpage': (context) => RouterPage(), //luyou
  '/appBarApi': (context) => AppBarPage(),
  '/btnPage': (context) => BtnPage(),
  '/formPage': (context) => FormPage(),
  '/datePage': (context) => DatePage(),
  '/swiperPage': (context) => SwiperPage(),
  '/statelessRoutePage': (context, {arguments}) =>
      StatelessRoutePage(arguments: arguments), //无状态组件传参
  '/statefulRoute': (context, {arguments}) => //有状态组件传参
      StatefulRoutePage(arguments: arguments),
  '/rigester1': (context) => Rigester1Page(),
  '/rigester2': (context) => Rigester2Page(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
