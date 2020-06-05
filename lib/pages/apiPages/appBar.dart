/*
 * @Author: your name
 * @Date: 2020-06-04 10:40:29
 * @LastEditTime: 2020-06-04 14:25:00
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\apiPages\appBar.dart
 */
import 'package:flutter/material.dart';

//方法二 TabController  必须继承statefulwidget  可以监听状态
class AppBarPage extends StatefulWidget {
  AppBarPage({Key key}) : super(key: key);

  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    //生命周期函数
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appBar'),
        bottom: TabBar(controller: this._tabController, tabs: <Widget>[
          Tab(text: '推荐'),
          Tab(text: '收藏'),
        ]),
      ),
      body: TabBarView(controller: this._tabController, children: <Widget>[
        Center(child: Text('推荐')),
        Center(child: Text('收藏'))
      ]),
    );
  }
}

//方法一 defaultTabController   继承statelesswidget
// class AppBarPage extends StatelessWidget {
//   const AppBarPage({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('appbar'),
//             backgroundColor: Colors.purple,
//             centerTitle: true, //标题居中
//             // leading: IconButton(    //左侧图标按钮
//             //   icon: Icon(Icons.menu),
//             //   onPressed: () {
//             //     print('menu');
//             //   },
//             // ),
//             actions: <Widget>[
//               //右侧图标按钮
//               IconButton(
//                 icon: Icon(Icons.search),
//                 onPressed: () {},
//               )
//             ],
//             bottom: TabBar(
//               tabs: <Widget>[
//                 Tab(text: "推荐"),
//                 Tab(text: "热门"),
//               ],
//             ),
//           ),
//           body: TabBarView(
//             children: <Widget>[
//               ListView(
//                 children: <Widget>[
//                   ListTile(
//                     title: Text('第一个'),
//                   ),
//                   ListTile(
//                     title: Text('第一个'),
//                   )
//                 ],
//               ),
//               ListView(
//                 children: <Widget>[
//                   ListTile(
//                     title: Text('第二个'),
//                   ),
//                   ListTile(
//                     title: Text('第二个'),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ));
//   }
// }
