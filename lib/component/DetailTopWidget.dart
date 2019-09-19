import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:productdetailsui/common/CustomCardWidget.dart';

class DetailTopWidget extends StatelessWidget {
  final num height;
  final String productTitle;
  final String productBrand;
  final double rating;
  final double price;

  DetailTopWidget(
      {this.height,
      this.productTitle,
      this.productBrand,
      this.rating,
      this.price});

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      height: height,
      horizontalPadding: 35.0,
      verticalPadding: 10.0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            productTitle,
            style: TextStyle(
                fontSize: ScreenUtil.instance.setSp(60),
                fontFamily: 'Lora',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
          Text(
            productBrand,
            style: TextStyle(
              fontSize: ScreenUtil.instance.setSp(55),
              fontFamily: 'Lora',
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.yellow[700],
              ),
              Spacer(),
              Text(
                rating.toString(),
                style: TextStyle(
                    fontSize: ScreenUtil.instance.setSp(55),
                    fontFamily: 'Lora'),
              ),
              Spacer(
                flex: 20,
              ),
              Text(
                '\$ ${price.toString()}',
                style: TextStyle(
                    fontSize: ScreenUtil.instance.setSp(60),
                    color: Colors.orange,
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
