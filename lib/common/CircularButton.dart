import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircularButton extends StatefulWidget {
  final List<String> text;

  CircularButton(
    this.text,
  );

  @override
  _CircularButtonState createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton> {
  // List<String> selectedSize = List();

  bool isSelected;

  _buildButton() {

    isSelected = false;

    List<Widget> sizes = widget.text.map((item) {
      return InkWell(
        onTap: () {
          isSelected = true;
          print(isSelected);
        },
        child: Container(
          width: ScreenUtil().setHeight(100),
          height: ScreenUtil().setWidth(100),
          margin: EdgeInsets.only(left: 5.0, right: 15.0),
          decoration: BoxDecoration(
            color: isSelected ? Colors.grey : Colors.white,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              item,
              style: TextStyle(
                fontFamily: 'Lora',
                fontSize: ScreenUtil().setSp(40),
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      );
    }).toList();
    return sizes;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildButton(),
    );
  }
}
