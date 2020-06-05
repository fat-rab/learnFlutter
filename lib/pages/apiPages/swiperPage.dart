/*
 * @Author: your name
 * @Date: 2020-06-05 15:51:51
 * @LastEditTime: 2020-06-05 16:58:28
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\apiPages\rImage.dart
 */
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatelessWidget {
  SwiperPage({Key key}) : super(key: key);
  final List _imgList = [
    {
      'url':
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591357108695&di=1a73242a069eb6c9e8eac65f5be2998a&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F7982199dcdd68cb8a783966d7ef603dbbed48ffc.jpg"
    },
    {
      'url':
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591357061578&di=3eebcba37a94efd96db6e0f9224a52b2&imgtype=0&src=http%3A%2F%2Fimg4.imgtn.bdimg.com%2Fit%2Fu%3D689801504%2C537903269%26fm%3D214%26gp%3D0.jpg"
    },
    {
      'url':
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591357059229&di=3e61f22eac04a83f32207d8590bb46e4&imgtype=0&src=http%3A%2F%2Fimg.saraba1st.com%2Fforum%2F201703%2F29%2F145812rmkybzfdvn20a91e.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图'),
      ),
      body: Column(
        children: <Widget>[
          Container(
              child: AspectRatio(
            aspectRatio: 16 / 9,
            child: new Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  this._imgList[index]['url'],
                  fit: BoxFit.cover,
                );
              },
              itemCount: this._imgList.length,
              autoplay: true,
              pagination: new SwiperPagination(), //分页器
              control: new SwiperControl(), //箭头
            ),
          ))
        ],
      ),
    );
  }
}
