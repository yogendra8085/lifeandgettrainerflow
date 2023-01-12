import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lifeandget_trainer/contantstring/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
class Previewpage extends StatefulWidget {
  const Previewpage({Key? key}) : super(key: key);

  @override
  State<Previewpage> createState() => _PreviewpageState();
}

class _PreviewpageState extends State<Previewpage> {
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
              child: Text("Message ",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: Column(
        children: [
          Text("Preview",style: TextStyle(color: Colors.black,fontSize: 24),),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 1.h),
            child: Text("This is what the clients is going to see  in thier program",textAlign: TextAlign.center,style: TextStyle(color: Color(0xff707070),fontSize: 18),),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            margin:  EdgeInsets.all(10),
            decoration: BoxDecoration(

            color: colors().splashscreenbacground,
            borderRadius: BorderRadius.circular(10)

          ),

          child:Center(
            child: Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 23),
          ),),
          )

        ],
      ),
    ));
  }
}
