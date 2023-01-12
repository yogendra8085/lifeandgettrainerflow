import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';

class subscriptionandpaymentpage extends StatefulWidget {
  const subscriptionandpaymentpage({Key? key}) : super(key: key);

  @override
  State<subscriptionandpaymentpage> createState() => _subscriptionandpaymentpageState();
}

class _subscriptionandpaymentpageState extends State<subscriptionandpaymentpage> {
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
              child: Text("Renewal Your Subscription",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 4.w),
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
            Container(
              padding: EdgeInsets.symmetric(vertical: 1.5.h),
              decoration:BoxDecoration(
                color: colors().splashscreenbacground,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xff707070))

              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.autorenew,color: colors().white,size: 30,),
                    2.w.widthBox,
                    Text('Renew Your Subscription',style: TextStyle(color: colors().white,fontSize: 22),),
                  ],
                )),
            3.h.heightBox,
            Row(
              children: [
                Expanded(child: Text("Total\nBalance",style: TextStyle(color: colors().black,fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                Expanded(child: Text("Lifetime\nvolume",style: TextStyle(color: colors().black,fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,))
              ],
            ),
            2.h.heightBox,
            Row(

              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 2.h),
                    decoration: BoxDecoration(
                        color: colors().white,
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: [new BoxShadow(
                            color: Color(0xff000000).withOpacity(0.2),
                            blurRadius: 2.0,
                            offset: Offset(0,1)
                        ),]

                    ),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("\$",style: TextStyle(color: colors().splashscreenbacground,fontSize: 28,fontWeight: FontWeight.bold),),
                        Text("50",style: TextStyle(color: colors().splashscreenbacground,fontSize: 22,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
                3.w.widthBox,
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 2.h),
                    decoration: BoxDecoration(
                        color: colors().white,
                        borderRadius: BorderRadius.circular(9),
                        boxShadow: [new BoxShadow(
                            color: Color(0xff000000).withOpacity(0.2),
                            blurRadius: 2.0,
                            offset: Offset(0,1)
                        ),]

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("\$",style: TextStyle(color: colors().splashscreenbacground,fontSize: 28,fontWeight: FontWeight.bold),),
                        Text("50",style: TextStyle(color: colors().splashscreenbacground,fontSize: 22,fontWeight: FontWeight.bold),),

                      ],
                    ),
                  ),
                ),
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
            3.h.heightBox,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 2.h),
              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("Payout & payment info",style: TextStyle(color: colors().black,fontSize: 20,fontWeight: FontWeight.bold),),
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.5.h),
                   decoration: BoxDecoration(
                     color: colors().splashscreenbacground,
                     borderRadius: BorderRadius.circular(50)
                   ),
                   child: Text("View",style: TextStyle(fontSize: 14,color: colors().white),),
                 )

                ],
              ),
            ),





          ],
        ),
      ),
    ));
  }
}
