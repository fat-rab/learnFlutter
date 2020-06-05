import 'package:flutter/material.dart';
import "../../data.dart";

class CardApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('flutter demo')),
      body: HomeContainer(),
    );
  }
}

//循环遍历card组件
class HomeContainer extends StatelessWidget {
  Widget _getData(contxt, index) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              listData[index]['image'],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: NetworkImage(
              listData[index]['image'],
            )),
            title: Text(
              listData[index]['text'],
            ),
            subtitle: Text(
              listData[index]['text'],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: _getData,
    );
  }
}
//card组件
// class HomeContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Card(
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: <Widget>[
//               AspectRatio(
//                 aspectRatio: 16 / 9,
//                 child: Image.network(
//                   'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               ListTile(
//                 //处理圆角图片方法1
//                 // leading: ClipOval(
//                 //   child: Image.network(
//                 //     'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png',
//                 //     width: 55,
//                 //     height: 60,
//                 //     fit: BoxFit.cover,
//                 //   ),
//                 // ),
//                 //将图片处理成头像
//                 leading: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                     'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png',
//                   ),
//                 ),
//                 title: Text('XXXXX'),
//                 subtitle: Text('hhhhh'),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

//AspectRatio  设置子元素的长宽比
// class HomeContainer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 3.0 / 1.0,
//       child: Container(
//         color: Colors.red,
//       ),
//     );
//   }
// }
