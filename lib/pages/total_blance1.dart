import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';
class totalbalancepage1 extends StatefulWidget {
  const totalbalancepage1({Key? key}) : super(key: key);

  @override
  State<totalbalancepage1> createState() => _totalbalancepageState1();
}

class _totalbalancepageState1 extends State<totalbalancepage1> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
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
              child: Text("Lifetime volume",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            3.h.heightBox,
            Text('Lifetime Volume',style: TextStyle(color: colors().black,fontSize: 22,fontWeight: FontWeight.bold),),
            2.h.heightBox,
            Align(
              alignment: Alignment.center,
              child: Container(
                margin:EdgeInsets.symmetric(horizontal: 20.w,vertical: 2.h),
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
            3.h.heightBox,
            2.w.widthBox,
            Text('All transactions',style: TextStyle(color: colors().splashscreenbacground,fontSize: 22,fontWeight: FontWeight.bold),),
            3.h.heightBox,
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
              child: Row(

                children: [
                  Expanded(
                      flex:3,
                      child: Text('Client ',style: TextStyle(color: Color(0xff000000),fontSize: 18),)),
                  Expanded(
                      flex:2,
                      child: Text('Amount',style: TextStyle(color: Color(0xff000000),fontSize: 18),)),
                  Expanded(
                      flex:2,
                      child: Text('Date',style: TextStyle(color: Color(0xff000000),fontSize: 18),)),


                ],
              ),
            ),
            2.h.heightBox,

            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
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

                  Expanded(
                      flex:3,
                      child: Text("Mohsin ali",style: TextStyle(color: colors().black,fontSize: 16),)),
                  Expanded(
                      flex:2,
                      child: Text("\$ 30",style: TextStyle(fontSize: 16,color: colors().black),)),
                  Expanded(
                      flex:2,
                      child: Text("12-12-2022",style: TextStyle(fontSize: 16,color: colors().black),))

                ],
              ),
            ),
            2.h.heightBox,

            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
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

                  Expanded(
                      flex:3,
                      child: Text("Mohsin ali",style: TextStyle(color: colors().black,fontSize: 16),)),
                  Expanded(
                      flex:2,
                      child: Text("\$ 30",style: TextStyle(fontSize: 16,color: colors().black),)),
                  Expanded(
                      flex:2,
                      child: Text("12-12-2022",style: TextStyle(fontSize: 16,color: colors().black),))

                ],
              ),
            ),





          ],
        ),
      ),
    ));
  }
}
