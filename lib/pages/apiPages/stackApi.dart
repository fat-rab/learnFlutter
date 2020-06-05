/*
 * @Author: your name
 * @Date: 2020-06-02 17:26:23
 * @LastEditTime: 2020-06-03 15:57:41
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\main.dart
 */
import 'package:flutter/material.dart';

class StackApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter demo')),
      body: HomeContainer(),
    );
  }
}

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //层叠布局
      child: Container(
        width: 300,
        height: 300,
        color: Colors.pink,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10,
              child: Icon(Icons.home),
            ),
            Positioned(
              right: 10,
              child: Icon(Icons.send),
            ),
            Positioned(
              bottom: 0,
              child: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
// class HomeContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       //层叠布局
//       child: Container(
//         width: 300,
//         height: 300,
//         color: Colors.pink,
//         child: Stack(
//           children: <Widget>[
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Icon(Icons.home),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Icon(Icons.send),
//             ),
//             Align(
//               alignment: Alignment.topCenter,
//               child: Icon(Icons.search),
//             ),
//           ],
//         ),
//       ),
//       // child: Stack(
//       //   //alignment: Alignment.bottomCenter,  //层叠位置
//       //   alignment: Alignment(-1, 1), //x,y值 -1~1
//       //   children: <Widget>[
//       //     Container(
//       //       width: 200,
//       //       height: 200,
//       //       color: Colors.red,
//       //     ),
//       //     Text('hahah'),
//       //   ],
//       // ),
//     );
//   }
// }
