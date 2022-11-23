import 'package:flutter/material.dart';
import 'package:food_monkey/utils/app_style.dart';
import 'package:food_monkey/utils/size_cofig.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);
  static const routeName = "/LandingScreen";

  @override
  Widget build(BuildContext context) {
    Sizer size = Sizer(context: context);

    return Scaffold(
      body: Container(
        height: size.parentHeight(),
        width: size.parentWidth(),
        child: Stack(
          children: [
            Align(alignment: Alignment.topCenter,
              child: ClipPath(
                clipper: CustomClipperAppBar(),
                child: Container(
                  height: size.parentHeight()*0.5,
                  width: double.infinity,
                  decoration: ShapeDecoration(
                      color: kOrange,
                      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10))
                  ),
                  child: Image.asset("assets/images/virtual/login_bg.png",
                  fit: BoxFit.cover,),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/virtual/MealMonkeyLogo.png"),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.parentHeight() * 0.3,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Text(
                      "Discouver the best food  located around your place of resisdence and fast deliery to your doorstep",
                      style: kPoppinsRegula.copyWith(color: kGrey),
                      textAlign: TextAlign.center,
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "login",
                          style: kPoppinsSemiBold.copyWith(color: kwhite),
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(kwhite),
                            foregroundColor: MaterialStateProperty.all(kOrange),
                            shape: MaterialStateProperty.all(StadiumBorder(
                                side: BorderSide(color: kOrange, width: 1.5)))),
                        onPressed: () {},
                        child: Text("create an account"),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class CustomClipperAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controlPoint = Offset(size.width * 0.24, size.height);
    Offset endPoint = Offset(size.width * 0.25, size.height * 0.96);
    Offset controlPoint2 = Offset(size.width * 0.3, size.height * 0.78);
    Offset endPoint2 = Offset(size.width * 0.5, size.height * 0.78);
    Offset controlPoint3 = Offset(size.width * 0.7, size.height * 0.78);
    Offset endPoint3 = Offset(size.width * 0.75, size.height * 0.96);
    Offset controlPoint4 = Offset(size.width * 0.76, size.height);
    Offset endPoint4 = Offset(size.width * 0.79, size.height);
    Path path = Path()
      ..lineTo(0, size.height)
      ..lineTo(size.width * 0.21, size.height)
      ..quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..quadraticBezierTo(
        controlPoint2.dx,
        controlPoint2.dy,
        endPoint2.dx,
        endPoint2.dy,
      )
      ..quadraticBezierTo(
        controlPoint3.dx,
        controlPoint3.dy,
        endPoint3.dx,
        endPoint3.dy,
      )
      ..quadraticBezierTo(
        controlPoint4.dx,
        controlPoint4.dy,
        endPoint4.dx,
        endPoint4.dy,
      )
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
