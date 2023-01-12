
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';

class invitefriendpage extends StatefulWidget {
  const invitefriendpage({Key? key}) : super(key: key);

  @override
  State<invitefriendpage> createState() => _invitefriendpageState();
}

class _invitefriendpageState extends State<invitefriendpage> {
  double percent=0.2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar:  AppBar(
        backgroundColor: colors().splashscreenbacground,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              child: Icon(Icons.arrow_back,color: colors().white,),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              child: Text("Invite Your Friends ",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           3.h.heightBox,
          Image.asset("assets/images/82441.png",
              width: double.infinity,fit: BoxFit.cover,

          ),
              3.h.heightBox,


              Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 1.5.h),
                  decoration:BoxDecoration(
                      color: colors().white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff707070))

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text('Invite Your Friends',style: TextStyle(color: colors().black,fontSize: 22),),
                      Text('To get a discount on your subscription !',style: TextStyle(color: colors().black,fontSize: 16),),
                    ],
                  )),
              2.h.heightBox,
              Text("Discount you have so far",
                style: TextStyle(color: colors().splashscreenbacground,fontSize: 20,),),
              2.h.heightBox,


              Column(
                crossAxisAlignment:percent==1? CrossAxisAlignment.end:CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:3.w,),
                    child: new LinearPercentIndicator(
                      barRadius: Radius.circular(10),
                      width: MediaQuery.of(context).size.width -60,

                      lineHeight: 14.0,
                      percent: percent,
                      backgroundColor: Color(0xffD6F1FF),
                      progressColor: Color(0xff0066FF),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:percent>0.5?percent*77.w:percent*65.w),
                    child: Column(
                      children: [
                        Image.asset("assets/images/Poly_seven.png",scale: 5,),

                        Text("${percent*100}%" ,style: TextStyle(color: colors().black,fontSize: 18,fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),

                ],
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 2.h),
                child: Text("2 accepted the invite and joined life & gate so far",  style: TextStyle(color: Color(0xff000000),fontSize: 20,),textAlign: TextAlign.center,),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w,),
                child: Text("%10 discount for each one join",  style: TextStyle(color: Color(0xff6A6A6A),fontSize: 20,),textAlign: TextAlign.center,),
              ),
              2.h.heightBox,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15.w,),
                child: Text("your friend also will get a %10 discount when they join",  style: TextStyle(color: Color(0xff6A6A6A),fontSize: 15,),textAlign: TextAlign.center,),
              ),

              3.h.heightBox,


            ],
          ),
        ),
      ),
    ));;
  }
}
