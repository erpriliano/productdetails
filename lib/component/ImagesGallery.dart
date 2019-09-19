import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:productdetailsui/common/CustomCardWidget.dart';
import 'package:productdetailsui/models/Data.dart';

class ImagesGallery extends StatefulWidget {
  @override
  _ImagesGalleryState createState() => _ImagesGalleryState();
}

class _ImagesGalleryState extends State<ImagesGallery> {
  List<Data> items = DataRepo().fetchAll();

  @override
  Widget build(BuildContext context) {
    return CustomCardWidget(
      height: 650,
      horizontalPadding: 10.0,
      verticalPadding: 10.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          if (item is Data) {
            return Container(
              width: ScreenUtil.instance.setWidth(450),
              margin: EdgeInsets.fromLTRB(
                ScreenUtil.instance.setWidth(10.0),
                ScreenUtil.instance.setHeight(5.0),
                ScreenUtil.instance.setWidth(10.0),
                ScreenUtil.instance.setHeight(5.0),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                image: DecorationImage(
                    image: AssetImage(item.imgUrl), fit: BoxFit.cover),
              ),
            );
          } else {
            return null;
          }
        },
      ),
    );
  }
}
