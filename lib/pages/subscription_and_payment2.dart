import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';

class subscriptionandpaymentpage1 extends StatefulWidget {
  const subscriptionandpaymentpage1({Key? key}) : super(key: key);

  @override
  State<subscriptionandpaymentpage1> createState() => _subscriptionandpaymentpage1State();
}

class _subscriptionandpaymentpage1State extends State<subscriptionandpaymentpage1> {
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
              child: Text("Subscription   ",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 4.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              3.h.heightBox,
              Text('Days left for your renewal',style: TextStyle(color: colors().black,fontSize: 22,fontWeight: FontWeight.bold),),
              3.h.heightBox,
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 1.5.h),
                  decoration: BoxDecoration(
                      color: colors().white,
                      borderRadius: BorderRadius.circular(9),
                      boxShadow: [new BoxShadow(
                          color: Color(0xff000000).withOpacity(0.2),
                          blurRadius: 2.0,
                          offset: Offset(0,1)
                      ),]

                  ),
                  child: Column(
                    children: [

                      Text("5",style: TextStyle(color: colors().black,fontSize: 28),),
                      Text("Days Left",style: TextStyle(color: colors().black,fontSize: 22),),

                    ],
                  ),
                ),
              ),
              3.h.heightBox,
              Text('Choose a plan',style: TextStyle(color: colors().splashscreenbacground,fontSize: 22,fontWeight: FontWeight.bold),),
              3.h.heightBox,
          Row(
            children: [
              Expanded(
                child: Container(

                  decoration: BoxDecoration(
                    color: Color(0xffFBE2E2),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      Container(
                        width:double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Center(child: Text("SAVE 33 %",style: TextStyle(color: Colors.transparent,fontSize: 14,))),
                      ),
                      2.h.heightBox,

                      Text("1",style: TextStyle(color: colors().black,fontSize: 26,fontWeight: FontWeight.bold)),
                      Text("Month",style: TextStyle(color: Color(0xff535353),fontSize: 16,)),
                      Text("\$199",style: TextStyle(color: Color(0xff535353),fontSize: 20,)),
                      2.h.heightBox,
                    ],
                  ),
                ),
              ),
              3.w.widthBox,
              Expanded(
                child: Container(

                  decoration: BoxDecoration(
                    color: Color(0xffE4F3FF),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Column(
                     mainAxisAlignment:MainAxisAlignment.start,
                    children: [
                      Container(
                        width:double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff4FAEF9),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Center(child: Text("SAVE 33 %",style: TextStyle(color: Colors.white,fontSize: 14,))),
                      ),
                      2.h.heightBox,

                      Text("3",style: TextStyle(color: colors().black,fontSize: 26,fontWeight: FontWeight.bold)),
                      Text("Month",style: TextStyle(color: Color(0xff535353),fontSize: 16,)),
                      Text("\$199",style: TextStyle(color: Color(0xff535353),fontSize: 20,)),
                      2.h.heightBox,
                    ],
                  ),
                ),
              )
            ],
          ),
              2.h.heightBox,
              Row(
                children: [
                  Expanded(
                    child: Container(

                      decoration: BoxDecoration(
                        color: Color(0xffF2DFFF),
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Container(
                            width:double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffC775FF),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: Center(child: Text("SAVE 33 %",style: TextStyle(color: Colors.white,fontSize: 14,))),
                          ),
                          2.h.heightBox,

                          Text("6",style: TextStyle(color: colors().black,fontSize: 26,fontWeight: FontWeight.bold)),
                          Text("Month",style: TextStyle(color: Color(0xff535353),fontSize: 16,)),
                          Text("\$394",style: TextStyle(color: Color(0xff535353),fontSize: 20,)),
                          2.h.heightBox,
                        ],
                      ),
                    ),
                  ),
                  3.w.widthBox,
                  Expanded(
                    child: Container(

                      decoration: BoxDecoration(
                        color: Color(0xffD8FFDD),
                        borderRadius: BorderRadius.circular(10),

                      ),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          Container(
                            width:double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff00BC18),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: Center(child: Text("SAVE 33 %",style: TextStyle(color: Colors.white,fontSize: 14,))),
                          ),
                          2.h.heightBox,

                          Text("1",style: TextStyle(color: colors().black,fontSize: 26,fontWeight: FontWeight.bold)),
                          Text("Year",style: TextStyle(color: Color(0xff535353),fontSize: 16,)),
                          Text("\$599",style: TextStyle(color: Color(0xff535353),fontSize: 20,)),
                          2.h.heightBox,
                        ],
                      ),
                    ),
                  )
                ],
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

             3.h.heightBox,


            ],
          ),
        ),
      ),
    ));
  }
}
