/*
 * @Author: your name
 * @Date: 2020-06-01 16:48:41
 * @LastEditTime: 2020-06-04 14:18:23
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\main.dart
 */
import 'package:flutter/material.dart';

class ComponentApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter demo')),
      body: HomeContainer(),
    );
  }
}

//组件详解
//布局练习
class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 180,
          color: Colors.black,
        ),
        SizedBox(height: 10),
        Container(
          height: 180,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: Image.network(
                      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591097320687&di=84248093d8363973f6252929c1aa7900&imgtype=0&src=http%3A%2F%2Fimg.mm4000.com%2Ffile%2F4%2Ff4%2F6567298703_800.jpg',
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 180,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                            ),
                            child: Image.network(
                                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591099540999&di=3b072dcb5c0ae61b47a727ff1aba0a5c&imgtype=0&src=http%3A%2F%2Fimg01.jituwang.com%2F190324%2F260664-1Z3240I21013.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                            ),
                            child: Image.network(
                                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591099540999&di=3b072dcb5c0ae61b47a727ff1aba0a5c&imgtype=0&src=http%3A%2F%2Fimg01.jituwang.com%2F190324%2F260664-1Z3240I21013.jpg',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
//Expanded
// class HomeContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         Expanded(
//           flex: 1,
//           child: BtnContainer(
//             Icons.star,
//             size: 30,
//             color: Colors.red,
//             iColor: Colors.yellow,
//           ),
//         ),
//         BtnContainer(
//           Icons.search,
//           size: 30,
//           color: Colors.blue,
//           iColor: Colors.white,
//         ),
//       ],
//     );
//   }
// }
//column
// class HomeContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 400,
//       height: 400,
//       color: Colors.pink,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween, //横向排序方式
//         crossAxisAlignment: CrossAxisAlignment.center, //纵向排序方式
//         children: <Widget>[
//           BtnContainer(
//             Icons.star,
//             size: 30,
//             color: Colors.red,
//             iColor: Colors.yellow,
//           ),
//           BtnContainer(
//             Icons.search,
//             size: 30,
//             color: Colors.blue,
//             iColor: Colors.white,
//           ),
//           BtnContainer(
//             Icons.send,
//             size: 30,
//             color: Colors.black,
//             iColor: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }
//row 组件
// class HomeContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 400,
//       height: 400,
//       color: Colors.pink,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween, //横向排序方式
//         crossAxisAlignment: CrossAxisAlignment.start,   //纵向排序方式
//         children: <Widget>[
//           BtnContainer(
//             Icons.star,
//             size: 30,
//             color: Colors.red,
//             iColor: Colors.yellow,
//           ),
//           BtnContainer(
//             Icons.search,
//             size: 30,
//             color: Colors.blue,
//             iColor: Colors.white,
//           ),
//           BtnContainer(
//             Icons.send,
//             size: 30,
//             color: Colors.black,
//             iColor: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }

class BtnContainer extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color color;
  final Color iColor;
  BtnContainer(this.icon,
      {this.size = 32, this.color = Colors.red, this.iColor = Colors.yellow});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          size: this.size,
          color: this.iColor,
        ),
      ),
    );
  }
}

//Padding 组件
//Padding(padding: EdgeInsets.all(10),child:xxxxx)

// class HomeContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
//       child: GridView.count(
//         crossAxisCount: 2,
//         childAspectRatio: 1.5,
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//             child: Image.network(
//               'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
//             child: Image.network(
//               'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
