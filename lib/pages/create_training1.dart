
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';

class createtrainingpage1 extends StatefulWidget {
  const createtrainingpage1({Key? key}) : super(key: key);

  @override
  State<createtrainingpage1> createState() => _createtrainingpage1State();
}

class _createtrainingpage1State extends State<createtrainingpage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      appBar:  AppBar(
        backgroundColor: colors().splashscreenbacground,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.arrow_back,color: colors().white,),

            Text("Create training / diet program",style: TextStyle(color: colors().white,fontSize: 23),)
          ],),),
      body: Column(children: [
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Row(
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       color: colors().splashscreenbacground,
                       shape: BoxShape.circle,
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.all(13.0),
                       child: Image.asset("assets/images/edit.png",scale: 3,),
                     )),
                   ),
                   4.w.widthBox,
                   Container(
                     decoration: BoxDecoration(
                       color: colors().splashscreenbacground,
                       shape: BoxShape.circle,
                     ),
                     child: Center(child: Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Image.asset("assets/images/delete1.png",scale: 3,),
                     )),
                   )
                 ],
               )
             ],
           ),
         ),
        2.h.heightBox,

        Container(
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
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2.h),
          child: Row(
            children: [
              Expanded(
                  flex:2,
                  child: Text("Name ",style: TextStyle(color: colors().black,fontSize: 14))),
              Expanded(
                  flex:1,
                  child: Text("Buy",style: TextStyle(color: colors().black,fontSize: 14))),
              Expanded(
                  flex:1,
                  child: Text("Status",style: TextStyle(color: colors().black,fontSize: 14))),
              1.w.widthBox,
              Expanded(
                  flex:1,
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 0.6.h),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(child: Text("View",style: TextStyle(color: colors().white,fontSize: 14))))
              ),
            ],
          ),
        ),
        2.h.heightBox,
        Container(
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
          padding: EdgeInsets.symmetric(horizontal: 12,vertical: 2.h),
          child: Row(
            children: [
              Expanded(
                  flex:2,
                  child: Text("Full body Training ",style: TextStyle(color: colors().black,fontSize: 14))),
              Expanded(
                  flex:1,
                  child: Text("10",style: TextStyle(color: colors().black,fontSize: 16))),
              Expanded(
                  flex:1,
                  child: Text("On hold",style: TextStyle(color: colors().yellow,fontSize: 14))),
              1.w.widthBox,
              Expanded(
                  flex:1,
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 0.6.h),
                      decoration: BoxDecoration(
                          color:colors().splashscreenbacground ,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(child: Text("View",style: TextStyle(color: colors().white,fontSize: 14))))
              ),
            ],
          ),
        ),
        2.h.heightBox,
      ],),
    )
    );
  }
}
