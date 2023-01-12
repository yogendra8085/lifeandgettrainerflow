import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';
class contactuspage extends StatefulWidget {
  const contactuspage({Key? key}) : super(key: key);

  @override
  State<contactuspage> createState() => _contactuspageState();
}

class _contactuspageState extends State<contactuspage> {
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
              child: Text("Contact us ",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: Column(
        children: [
          2.h.heightBox,
          Container(

            margin:EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
            decoration: BoxDecoration(
              color:  colors().white,
              borderRadius: BorderRadius.circular(10.0),

              boxShadow: [
                BoxShadow(
                  color: const Color(0x3b000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: ListTile(
              title: Text("Email",style: TextStyle(color: Color(0xff707070),fontSize: 14),),
              subtitle:Text("Info@lifeandgate.com",style: TextStyle(color: Color(0xff272626),fontSize: 17),),
              trailing: Icon(Icons.email,color: colors().black,size: 30,),
            ),
          ),
          Container(

            margin:EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
            decoration: BoxDecoration(
              color:  colors().white,
              borderRadius: BorderRadius.circular(10.0),

              boxShadow: [
                BoxShadow(
                  color: const Color(0x3b000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: ListTile(
              title: Text("Website",style: TextStyle(color: Color(0xff707070),fontSize: 14),),
              subtitle:Text("LifeandGate.com",style: TextStyle(color: Color(0xff272626),fontSize: 17),),
              trailing: Icon(Icons.language,color: colors().black,size: 30,),
            ),
          ),
          Container(

            margin:EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
            decoration: BoxDecoration(
              color:  colors().white,
              borderRadius: BorderRadius.circular(10.0),

              boxShadow: [
                BoxShadow(
                  color: const Color(0x3b000000),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: ListTile(
              title: Text("Phone number",style: TextStyle(color: Color(0xff707070),fontSize: 14),),
              subtitle:Text("+1 (999) 6666-444",style: TextStyle(color: Color(0xff272626),fontSize: 17),),
              trailing: Icon(Icons.phone,color: colors().black,size: 30,),
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 1.5.h),
            margin: EdgeInsets.symmetric(vertical: 1.5.h,horizontal: 3.w),
            decoration: BoxDecoration(
              color: colors().splashscreenbacground,
              borderRadius: BorderRadius.circular(10),

            ),
            child: Center(
              child: Text("Feedback",style: TextStyle(color: colors().white,fontSize: 23),),
            )                   ,
          )
        ],
      ),
    ));
  }
}
