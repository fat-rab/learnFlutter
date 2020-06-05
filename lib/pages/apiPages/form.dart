/*
 * @Author: your name
 * @Date: 2020-06-04 16:53:09
 * @LastEditTime: 2020-06-05 10:11:56
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\apiPages\form.dart
 */
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  FormPage({Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('FORMAPI')),
        //body: BodyContainer(),
        //body: FormContainer()
        body: BodyContainer());
  }
}

class FormContainer extends StatefulWidget {
  FormContainer({Key key}) : super(key: key);

  @override
  _FormContainerState createState() => _FormContainerState();
}

class _FormContainerState extends State<FormContainer> {
  var _userName = new TextEditingController(); //初始化赋值
  String _passWord;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._userName.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          TextField(
            controller: this._userName, //设置初始化的值
            decoration: InputDecoration(
              hintText: '请输入账号',
              labelText: '账号',
            ),
            onChanged: (value) {
              print(value);
            },
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: '请输入密码',
              labelText: '密码',
            ),
            onChanged: (value) {
              this._passWord = value;
            },
          ),
          Container(
            width: double.infinity,
            height: 40,
            child: RaisedButton(
              color: Colors.blue,
              child: Text('登录'),
              onPressed: () {
                print(this._userName.text);
                print(this._passWord);
              },
            ),
          )
        ],
      ),
    );
  }
}

class BodyContainer extends StatefulWidget {
  BodyContainer({Key key}) : super(key: key);

  @override
  _BodyContainerState createState() => _BodyContainerState();
}

class _BodyContainerState extends State<BodyContainer> {
  bool flag = false;
  int sex = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: '边框文本框',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: '多行文本',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: '密码',
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.people),
            ),
          ),
          SizedBox(height: 10),
          Checkbox(
            value: this.flag,
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
          ),
          SizedBox(height: 10),
          CheckboxListTile(
            title: Text('主标题'),
            subtitle: Text('副标题'),
            value: this.flag,
            onChanged: (value) {
              setState(() {
                this.flag = value;
              });
            },
          ),
          Row(
            children: <Widget>[
              Text('男'),
              Radio(
                value: 1,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              ),
              Text('女'),
              Radio(
                value: 2,
                groupValue: this.sex,
                onChanged: (value) {
                  setState(() {
                    this.sex = value;
                  });
                },
              )
            ],
          ),
          RadioListTile(
            title: Text('男'),
            value: 1,
            groupValue: this.sex,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
          ),
          RadioListTile(
            title: Text('女'),
            value: 2,
            groupValue: this.sex,
            onChanged: (value) {
              setState(() {
                this.sex = value;
              });
            },
          )
          // Row(
          //   children: <Widget>[

          //   ],
          // )
        ],
      ),
    );
  }
}
