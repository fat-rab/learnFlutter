import 'package:flutter/material.dart';

class WrapApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Warp')),
      body: HomeContainer(),
    );
  }
}

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        //alignment: WrapAlignment.spaceBetween,
        //runAlignment: WrapAlignment.start,
        children: <Widget>[
          MyBtn('一人之下123'),
          MyBtn('一人之下'),
          MyBtn('一人之下'),
          MyBtn('一人之下123'),
          MyBtn('一人之下'),
          MyBtn('一人之下'),
          MyBtn('一人之下'),
          MyBtn('一人之下'),
        ],
      ),
    );
  }
}

class MyBtn extends StatelessWidget {
  final String text;
  MyBtn(this.text);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
