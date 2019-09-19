import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:productdetailsui/common/CircularButton.dart';
import 'package:productdetailsui/common/ColorSelector.dart';
import 'package:productdetailsui/common/CustomCardWidget.dart';

class ActionsWidget extends StatefulWidget {
  @override
  _ActionsWidgetState createState() => _ActionsWidgetState();
}

class _ActionsWidgetState extends State<ActionsWidget> {
  
  List<String> sizes = ['S', 'M', 'L', 'XL'];
  int qty = 0;

  _buildColorsSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          'Colors',
          style: TextStyle(
              fontFamily: 'Lora',
              fontSize: ScreenUtil.instance.setSp(50),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ColorSelector(
              colors: [
                Colors.red,
                Colors.green,
                Colors.blue,
                Colors.cyan,
                Colors.white,
                Colors.blueGrey
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.black.withOpacity(0.4),
        ),
      ],
    );
  }

  _buildQty() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          'Quantity',
          style: TextStyle(
              fontFamily: 'Lora',
              fontSize: ScreenUtil.instance.setSp(50),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RawMaterialButton(
              elevation: 5.0,
              shape: CircleBorder(),
              fillColor: Colors.black,
              onPressed: () {
                setState(() {
                  if (qty < 1) {
                    return null;
                  } else {
                    qty -= 1;
                  }
                });
              },
              child: Text(
                '-',
                style: TextStyle(
                    fontFamily: 'Lora',
                    fontSize: ScreenUtil.instance.setSp(50),
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Text(
              '${qty.toString()}',
              style: TextStyle(
                  fontFamily: 'Lora',
                  fontSize: ScreenUtil.instance.setSp(55),
                  fontWeight: FontWeight.bold),
            ),
            RawMaterialButton(
              elevation: 5.0,
              shape: CircleBorder(),
              fillColor: Colors.black,
              onPressed: () {
                setState(() {
                  qty += 1;
                });
              },
              child: Text(
                '+',
                style: TextStyle(
                    fontFamily: 'Lora',
                    fontSize: ScreenUtil.instance.setSp(50),
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
        Divider(
          color: Colors.black.withOpacity(0.4),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      horizontalPadding: 35.0,
      verticalPadding: 10.0,
      height: 800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: _buildColorsSelector(),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'Sizes',
                  style: TextStyle(
                      fontFamily: 'Lora',
                      fontSize: ScreenUtil.instance.setSp(50),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                ),
                CircularButton(sizes),
                Divider(
                  color: Colors.black.withOpacity(0.4),
                )
              ],
            ),
          ),
          Expanded(
            child: _buildQty(),
          ),
        ],
      ),
    );
  }
}
