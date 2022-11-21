import 'package:flutter/material.dart';

class Sizer {
  final BuildContext context;
  final bool hasAppBar;
  final bool hasBottomNavBar;

  Sizer({this.hasAppBar=false, this.hasBottomNavBar=false, required this.context});

  MediaQueryData mediaQueryData(){
    return MediaQuery.of(context);
  }

  double parentWidth(){
    return MediaQuery.of(context).size.width;
  }

  double parentHeight(){
    return MediaQuery.of(context).size.height;
  }

  double horizontalBlockWidth(){
    return parentWidth() / 100;
  }


  double verticalBlockHeight(){
    return parentWidth()/100;
  }

  double horizontalSafeArea(){
    return mediaQueryData().padding.left+
    mediaQueryData().padding.right;
    //padding.left, right , top are default values of content
    //for padding top, it's the space occupied by the notifications bar
  }

  // simple the used space at the sides

   double  verticalSafeArea(){
    double heightPadding = mediaQueryData().padding.top +
     mediaQueryData().padding.bottom;

    //dedacts the area for notification and time

    if (hasAppBar){
      heightPadding= AppBar().preferredSize.height + heightPadding;
      // includes the part taken by an appBar, assuming the appBar has a
      //default height
   }

    if (hasBottomNavBar){
      heightPadding=  kBottomNavigationBarHeight + heightPadding;
    }

    return heightPadding;
    // here height padding is the already used space
     //simple the used verticalspace
   }

  double verticalSafeBlock(){
    return (parentHeight()-verticalSafeArea() / 100);
    // the available height space in percentage

  }
  double horizontalSafeBlock(){
    return (parentWidth()- horizontalSafeArea() / 100);
    //the available horizontal space in percentage
    //block means in  percentage
  }

  double sizer_height(double heightInPercentage){
    return verticalSafeBlock()*heightInPercentage;

    //so verticalSafeblock is like the unit now since it's the space
    //left that can be reused
  }
  double sizer_width(double widthInPercentage){
    return horizontalSafeBlock()* widthInPercentage;

    //safeblock is just area in percentage.
  }

}