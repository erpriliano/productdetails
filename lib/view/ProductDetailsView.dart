import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:productdetailsui/component/ActionsWidget.dart';
import 'package:productdetailsui/component/DescriptionWidget.dart';
import 'package:productdetailsui/component/DetailTopWidget.dart';
import 'package:productdetailsui/component/ImagesGallery.dart';

class ProductDetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the size once only on entry's file which is this file
    //Screensize based on device in the design
    //In this case using Google Pixel 2
    //which has 1080x1920 (default screensize for this class)
    //But we want to make sure that all fontsize will be scaled automatically
    ScreenUtil.instance = ScreenUtil(allowFontScaling: true)..init(context);

    //AppBar builder
    _buildAppBar() {
      return AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text('Product Detail'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      );
    }

    //Bottom NavBar builder
    _buildBottomAppBar() {
      return SizedBox(
        height: ScreenUtil().setHeight(150),
        child: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'ADD TO WISHLIST',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil.getInstance().setSp(34),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'ORDER PAGE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil.getInstance().setSp(34),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          shape: CircularNotchedRectangle(),
        ),
      );
    }

    _buildBottomFAB() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
      );
    }

    return Scaffold(
      appBar: _buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          DetailTopWidget(
            height: 320,
            productTitle: 'Skinny Fit EZY denim',
            productBrand: 'Uniqlo',
            rating: 4.2,
            price: 10.25,
          ),
          ImagesGallery(),
          DescriptionWidget(
            desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed orci nulla, vehicula sit amet elementum auctor, euismod vel mauris. Proin quis congue tortor. Nam lectus ex, hendrerit vel risus sit amet, congue facilisis eros. Sed nibh lacus, malesuada accumsan dolor sit amet, sagittis tristique mauris.',
          ),
          ActionsWidget(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildBottomFAB(),
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }
}
