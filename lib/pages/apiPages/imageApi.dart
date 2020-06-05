//Material  UI框架
import 'package:flutter/material.dart';

class ImageApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter demo'),
      ),
      body: HomeContainer(),
    );
  }
}

//中间文字组件
class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Container类似DIV
      child: Container(
        //本地图片
        //child: Image.asset('images/hun2.jpg'),
        //网络图片
        // child: Image.network(
        // "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png",
        // fit: BoxFit.cover,
        // ),
        //实现圆角图片1
        // width: 300,
        // height: 200,
        // decoration: BoxDecoration(
        //   border: Border.all(color: Colors.red, width: 2.0),
        //   borderRadius: BorderRadius.circular(50),
        //   image: DecorationImage(
        //     image: NetworkImage(
        //       "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png",
        //     ),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        //圆角图片2
        child: ClipOval(
          child: Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png',
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
