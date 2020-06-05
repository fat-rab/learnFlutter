/*
 * @Author: your name
 * @Date: 2020-06-03 13:41:17
 * @LastEditTime: 2020-06-04 16:53:19
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\tab.dart
 */
import 'package:flutter/material.dart';

import './pages/tabPages/api.dart';
import './pages/tabPages/home.dart';
import './pages/tabPages/detail.dart';

class Tabs extends StatefulWidget {
  final int index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  List _titleList = ['首页', 'api', '细节'];
  List _pageList = [HomePage(), ApiPage(), DetailPage()];
  _TabsState(index) {
    this._currentIndex = index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this._titleList[this._currentIndex])),
      body: this._pageList[this._currentIndex],
      floatingActionButton: Container(
        width: 60,
        height: 60,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: this._currentIndex == 1 ? Colors.blue : Colors.grey,
          onPressed: () {
            setState(() {
              this._currentIndex = 1;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //方法一 左侧菜单
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: DrawerHeader(
                    child: Text('123'),
                    decoration: BoxDecoration(
                        //border: Border.all(color: Colors.red),
                        image: DecorationImage(
                      image: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png',
                      ),
                      fit: BoxFit.cover,
                    )),
                  ),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('首页'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('设置'),
            ),
            Divider(),
          ],
        ),
      ),
      //方法二 右侧菜单
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: UserAccountsDrawerHeader(
                    accountName: Text('施鑫伟'),
                    accountEmail: Text('123@qq.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590732741458&di=a92ea407959296c47b08c9ea75e29087&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F57c12f8c9564a96556c424c63ac81a9939d9bca6.png'),
                    ),
                    decoration: BoxDecoration(
                        //border: Border.all(color: Colors.red),
                        image: DecorationImage(
                      image: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1591264734291&di=d88739ccba4bc55c9cc3647e7c5496bf&imgtype=0&src=http%3A%2F%2Fgss0.bdstatic.com%2F7LsWdDW5_xN3otebn9fN2DJv%2Fdoc%2Fpic%2Fitem%2F7acb0a46f21fbe096abdcde662600c338644ad64.jpg',
                      ),
                      fit: BoxFit.cover,
                    )),
                  ),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('首页'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('设置'),
            ),
            Divider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, //哪一个tabbar 被选中
        onTap: (int index) {
          //点击tabbar 调用的函数
          setState(() {
            this._currentIndex = index;
          });
        },
        //fixedColor: Colors.red, //选中颜色，默认主题色
        type: BottomNavigationBarType.fixed, //配置tabbar 可以有超过三个按钮
        items: [
          //tabbar 内容
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('api'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.details),
            title: Text('细节'),
          )
        ],
      ),
    );
  }
}
