# productdetailsui


I tried to implement ScreenUtil plugin on flutter based on this [link](https://medium.com/nonstopio/let-make-responsive-app-in-flutter-e48428795476) to make responsive app on any screen sizes where the app will be installed.

<b>Below are screenshots of Pixel 2</b>
<br>
<img src="https://github.com/erpriliano/productdetails/blob/master/assets/ss/01.png" width="250"></img>
<img src="https://github.com/erpriliano/productdetails/blob/master/assets/ss/02.png" width="250"></img>
<img src="https://github.com/erpriliano/productdetails/blob/master/assets/ss/03.png" width="250"></img>
<br>
<br>
<br>

<b>Below are taken from iPhone Xr</b>
<br>
<img src="https://github.com/erpriliano/productdetails/blob/master/assets/ss/01iPhoneXr.png" width="250"></img>
<img src="https://github.com/erpriliano/productdetails/blob/master/assets/ss/02iPhoneXr.png" width="250"></img>
<br>
<br>
<br>

<b>Below are taken from iPad Air 2</b>
<br>
<img src="https://github.com/erpriliano/productdetails/blob/master/assets/ss/01iPadAir2.png" width="250"></img>
<img src="https://github.com/erpriliano/productdetails/blob/master/assets/ss/02iPadAir2.png" width="250"></img>
<br>
<br>
<br>
All the UI are responsive no matter how big or how small your device's screen size, the layout are adapting itself based on the size of your screen's device. As for example, you can see the title on the appbar, I didn't use ScreenUtil packages for that and it will only fit for Pixel 2 (device I used to design the UI). Another example is, you can see the Description content, I used only Column Widget's properties (mainAxisAlignment: MainAxisAlignment.spaceBetween) which then you can remove it and use Container for Column's children and play with its margin / padding then apply ScreenUtil class there.


You can download the packages and read the documentation [here](https://pub.dev/packages/flutter_screenutil).
