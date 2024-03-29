import 'package:flutter/material.dart';
import 'package:productdetailsui/view/ProductDetailsView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductDetailsView(),
    );
  }
}

