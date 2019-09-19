import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardWidget extends StatelessWidget {

  final num height;
  final Widget child;
  final num verticalPadding;
  final num horizontalPadding;

  CustomCardWidget({
    this.height,
    this.horizontalPadding,
    this.verticalPadding,
    @required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: ScreenUtil.instance.setHeight(20.0),
        horizontal: ScreenUtil.instance.setWidth(30.0),
      ),
      child: Card(
        elevation: 5.0,
        color: Colors.grey[300],
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: ScreenUtil.instance.setHeight(verticalPadding),
            horizontal: ScreenUtil.instance.setWidth(horizontalPadding),
          ),
          height: ScreenUtil.instance.setHeight(height),
          child: child,
        ),
      ),
    );
  }
}