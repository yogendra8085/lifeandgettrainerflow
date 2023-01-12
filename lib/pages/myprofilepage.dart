
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';

class myprofiepage extends StatefulWidget {
  const myprofiepage({Key? key}) : super(key: key);

  @override
  State<myprofiepage> createState() => _myprofiepageState();
}

class _myprofiepageState extends State<myprofiepage> {
  List<String> list=[ "assets/images/dietprogram.png","assets/images/messesing.png","assets/images/payment.png","assets/images/contact.png"];
  List<Color> color=[Color(0xffC6E7F9),Color(0xffB4DEFE),Color(0xff92D9FF),Color(0xff4EC2FF)];
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff35B7FC),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/logo-01.png",scale: 6,),
            Container(
                width: 12.w,
                height: 6.h,
                child: Image.asset("assets/images/noun_notification_2184935.png"
                )),
            Container(
                width: 12.w,
                height: 6.h,
                child: Image.asset("assets/images/profile.png"
                )),

          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            1.5.h.heightBox,
            Container(
              height: 12.h,
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
              decoration: BoxDecoration(
                color: colors().white,
                  boxShadow: [new BoxShadow(
                    color: Color(0xff000000).withOpacity(0.2),
                    blurRadius: 2.0,
                    offset: Offset(0,1)
                  ),]
              ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Total Clients",style: TextStyle(color:Color(0xff0066FF),fontSize: 18 ),
                    ),
                    Text("20",style: TextStyle(color:Color(0xff000000),fontSize: 18 ),
                    ),

                  ],),
                  VerticalDivider(
                      thickness:1.2,
                    color: Color(0xff707070),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Total Clients",style: TextStyle(color:Color(0xff0066FF),fontSize: 18 ),
                    ),
                    Text("20",style: TextStyle(color:Color(0xff000000),fontSize: 18 ),
                    ),

                  ],),
                  VerticalDivider(
                    thickness:1.2,
                    color: Color(0xff707070),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Total Clients",style: TextStyle(color:Color(0xff0066FF),fontSize: 18 ),
                    ),
                    Text("3.0",style: TextStyle(color:Color(0xff000000),fontSize: 18 ),
                    ),
                      RatingBarIndicator(
                        direction: Axis.horizontal,
                        rating: 3,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.5.w),
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 3,
                        itemSize: 15.0,

                      )

                  ],),

                ],
              )
            ),
            3.h.heightBox,
            GridView.builder(

              shrinkWrap: true,
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: MediaQuery.of(context).size.width /
                      (MediaQuery.of(context).size.height / 1.6),
                  crossAxisCount:  (orientation == Orientation.portrait) ? 2 : 3),
              itemBuilder: (BuildContext context, int index) {
                return Container(

                  margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),

                  decoration: BoxDecoration(
                    color: color[index],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     Image.asset(list[index],scale: 4,),


                    Text("Create a Training\nor\nDiet Program",style: TextStyle(color: Color(0xff000000),fontSize: 18),textAlign: TextAlign.center,)
                  ],),
                );
              },
            ),

          ],
        ),
      ),

    ));
  }
}
