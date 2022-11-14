import 'package:flutter/material.dart';
import 'package:travel_app/app_style.dart';
import 'package:travel_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      children: [
        Row(
          children: [
            Container(
              height: 51,
              width: 51,
              decoration: BoxDecoration(
                  color: klightBlue,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage('images/avatar.png'),
                  )),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back!",
                  style: kPoppinsBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 4),
                ),
                Text(
                  "26,November,22",
                  style: kPoppinsRegulaBold.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3),
                )
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Container(
          decoration: (BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kwhite,
            boxShadow: [
              BoxShadow(
                color: kdarkBlue.withOpacity(0.051),
                blurRadius: 24.0,
                spreadRadius: 0.0,
              ),
            ],
          )),
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                style: kPoppinsRegulaBold.copyWith(
                    color: kBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3),
                controller: TextEditingController(),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 13,
                    ),
                    hintText: "Search for article",
                    border: kBprder,
                    errorBorder: kBprder,
                    focusedBorder: kBprder,
                    focusedErrorBorder: kBprder,
                    hintStyle: kPoppinsRegulaBold.copyWith(
                      color: kGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    )),
              )),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kBlue,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 14,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 38.0),
                  child: Text(
                    "#Health",
                    style: kPoppinsMedium.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        color: kGrey),
                  ),
                );
              }),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 304,
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.only(right: 20),
                height: 304,
                width: 255,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  color: kwhite,
                  boxShadow: [
                    BoxShadow(
                      color: kdarkBlue.withOpacity(0.051),
                      blurRadius: 24.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 154,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          image: DecorationImage(
                            image: AssetImage('images/sea.jpg'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    SizedBox(
                      height: 18,
                    ),

                    Flexible(
                        child: Text(
                      "Bolga - unique, unmateched. There is no "
                      "other place like Bolga in this world",
                      style: kPoppinsBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 19,
                              backgroundColor: klightBlue,
                              backgroundImage: AssetImage("images/avatar.png"),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Grace Aliko",
                                  style: kPoppinsBold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                                Text(
                                  "Nov,26,22",
                                  style: kPoppinsRegulaBold.copyWith(
                                    color: kGrey,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            color: klightWhite,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.share,
                              color: kdarkBlue,
                            ),
                          ),
                        )
                      ],
                    )
                    //the flexible is to avoid overflow
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Short for you",
              style: kPoppinsBold.copyWith(
                fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
              ),
            ),
            Text(
              "view all",
              style: kPoppinsMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3, color: kBlue),
            )
          ],
        ),
        SizedBox(
          height: 88,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(
                    right: 20,
                  ),
                  height: 88,
                  width: 208,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      boxShadow: [
                        BoxShadow(
                          color: kdarkBlue.withOpacity(0.051),
                          offset: const Offset(0.0, 3.0),
                          blurRadius: 24.0,
                          spreadRadius: 0.00,
                        )
                      ]),
                  child: Row(
                    children: [
                      Container(
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/lombok.jpg",
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Text(
                              "Top trending bushes in Bolga",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: kPoppinsSemiBold.copyWith(
                                color: kdarkBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        )
      ],
    ));
  }
}
