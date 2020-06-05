/*
 * @Author: your name
 * @Date: 2020-06-05 10:21:54
 * @LastEditTime: 2020-06-05 15:26:58
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\apiPages\dateApi.dart
 */
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

//第三方插件
class DatePage extends StatefulWidget {
  DatePage({Key key}) : super(key: key);

  @override
  _DatePageState createState() => _DatePageState();
}

const String MIN_DATETIME = '1980-05-12';
const String MAX_DATETIME = '2021-11-25';

class _DatePageState extends State<DatePage> {
  bool _showTitle = true;
  DateTime _dateTime = DateTime.now();
  String _format = 'yyyy-MMMM-dd';
  DateTimePickerLocale _locale = DateTimePickerLocale.zh_cn;
  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: this._showTitle,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.blue)),
      ),
      minDateTime: DateTime.parse(MIN_DATETIME),
      maxDateTime: DateTime.parse(MAX_DATETIME),
      initialDateTime: this._dateTime,
      dateFormat: _format,
      locale: _locale,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      // onChange: (dateTime, List<int> index) {
      //   setState(() {
      //     this._dateTime = dateTime;
      //   });
      // },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          this._dateTime = dateTime;
        });
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //print(DateTime.parse(MIN_DATETIME));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateApi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Text(
                    '${formatDate(this._dateTime, [yyyy, '-', mm, '-', dd])}'),
                onTap: _showDatePicker,
              )
            ],
          ),
        ],
      ),
    );
  }
}

// //flutter 自带日期
// class DatePage extends StatefulWidget {
//   DatePage({Key key}) : super(key: key);

//   @override
//   _DatePageState createState() => _DatePageState();
// }

// class _DatePageState extends State<DatePage> {
//   DateTime _nowDate = DateTime.now();
//   var _nowTime = TimeOfDay(hour: 12, minute: 00);
//   _showDatePicker() {
//     showDatePicker(
//             context: context,
//             initialDate: this._nowDate,
//             firstDate: DateTime(1980),
//             lastDate: DateTime(2100))
//         .then((res) {
//       setState(() {
//         this._nowDate = res;
//       });
//     });
//   }

//   _showTimePicker() async {
//     var result =
//         await showTimePicker(context: context, initialTime: this._nowTime);
//     print(result);
//     setState(() {
//       this._nowTime = result;
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     //print(this._nowTime);
//     // print(formatDate(this._nowDate, [yyyy, '-', mm, '-', dd]));
//     // print(this._nowDate);
//     // print(this._nowDate.millisecondsSinceEpoch); //1591325174738
//     // print(DateTime.fromMillisecondsSinceEpoch(1591325174738));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DateApi'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               InkWell(
//                 child: Text('${formatDate(this._nowDate, [
//                   yyyy,
//                   '-',
//                   mm,
//                   '-',
//                   dd
//                 ])}   '),
//                 onTap: _showDatePicker,
//               ),
//               InkWell(
//                 child: Text('${this._nowTime.format(context)}'),
//                 onTap: _showTimePicker,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
