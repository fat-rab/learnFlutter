/*
 * @Author: your name
 * @Date: 2020-06-01 09:32:50
 * @LastEditTime: 2020-06-03 15:54:10
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\main.dart
 */
import 'package:flutter/material.dart';

class ListApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter demo')),
      body: HomeContainer(),
    );
  }
}

class HomeContainer extends StatelessWidget {
  //ListBuilder 循环列表
  final List list = new List();
  HomeContainer() {
    for (var i = 0; i < 10; i++) {
      this.list.add('我是第$i条数据');
    }
    print(this.list);
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: this.list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(this.list[index]),
          );
        });
  }
}

// class HomeContainer extends StatelessWidget {
//   //自定义方法
//   List<Widget> _getData() {
//     List<Widget> list = new List();
//     for (var i = 0; i < 10; i++) {
//       list.add(
//         ListTile(
//           title: Text('我是第$i条数据'),
//         ),
//       );
//     }
//     return list;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.all(10),
//       //垂直列表
//       scrollDirection: Axis.vertical, //默认就是垂直    Axis.horizontal 横向布局
//       children: _getData(),
//       // children: <Widget>[
//       //   ListTile(
//       //     leading: Icon(Icons.settings),
//       //     trailing: Icon(Icons.home),
//       //     title: Text(
//       //       '123123',
//       //       style: TextStyle(
//       //         fontSize: 18,
//       //         color: Colors.red,
//       //       ),
//       //     ),
//       //     subtitle: Text('qweqwe'),
//       //   ),
//       //   ListTile(
//       //     leading: Image(
//       //       image: NetworkImage(
//       //           'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png'),
//       //     ),
//       //     title: Text(
//       //       '456456',
//       //       style: TextStyle(
//       //         fontSize: 18,
//       //         color: Colors.red,
//       //       ),
//       //     ),
//       //     subtitle: Text('asdasd'),
//       //   )
//       // ],
//     );
//   }
// }
