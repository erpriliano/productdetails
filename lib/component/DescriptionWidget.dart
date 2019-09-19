import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:productdetailsui/common/CustomCardWidget.dart';

class DescriptionWidget extends StatelessWidget {

  final String desc;

  DescriptionWidget({
    @required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      horizontalPadding: 35.0,
      verticalPadding: 10.0,
      height: ScreenUtil.instance.setHeight(650),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Description',
            style: TextStyle(
                fontFamily: 'Lora',
                fontSize: ScreenUtil.instance.setSp(50),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0),
          ),
          Text(
            desc,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Lora',
              fontSize: ScreenUtil.instance.setSp(40),
            ),
          ),
        ],
      ),
    );
  }
}
