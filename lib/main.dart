/*
 * @Author: your name
 * @Date: 2020-06-03 11:44:07
 * @LastEditTime: 2020-06-05 14:26:18
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\main.dart
 */
/*
 * @Author: your name
 * @Date: 2020-06-03 11:44:07
 * @LastEditTime: 2020-06-03 15:56:25
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\main.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'tab.dart';
import 'router/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Tabs(),
      debugShowCheckedModeBanner: false, //去除右上角DEBUG 标记
      initialRoute: '/', //初始路由
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: onGenerateRoute,
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
    );
  }
}
