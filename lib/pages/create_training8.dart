import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

import '../contantstring/colors.dart';

class creattrainingpage8 extends StatefulWidget {
  const creattrainingpage8({Key? key}) : super(key: key);

  @override
  State<creattrainingpage8> createState() => _creattrainingpage8State();
}

class _creattrainingpage8State extends State<creattrainingpage8> {
  bool status=false;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar:  AppBar(
        backgroundColor: colors().splashscreenbacground,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.arrow_back,color: colors().white,),

            Text("Create training / diet program",style: TextStyle(color: colors().white,fontSize: 23),)
          ],),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Expanded(
                    flex: 5,
                    child: Text("Create the program .",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
              margin:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),

              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 5.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child: Row(
                children: [
                  Icon(Icons.menu,color: colors().black,size: 30,),
                  3.w.widthBox,
                  Text("Exercise / Search",style: TextStyle(color: colors().splashscreenbacground,fontSize: 18),)
                ],
              )
              ,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.5.h),
              margin:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),

              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: colors().splashscreenbacground,
                    width: 2,
                  ),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 5.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add,color: colors().splashscreenbacground,size: 40,),
                  3.w.widthBox,
                  Text("Add pics / videos",style: TextStyle(color: colors().splashscreenbacground,fontSize: 18),)
                ],
              )
              ,
            ),
          Row(
            children: [
              3.w.widthBox,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: colors().splashscreenbacground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      2.h.heightBox,
                      Text("Reptions\n( Reps )"),
                      2.h.heightBox,
                      Text("20"),
                      2.h.heightBox,
                      Icon(

                              Icons.arrow_drop_down_circle_rounded,color: Colors.white,size: 30,
                      ),
                      2.h.heightBox,

                    ],
                  ),
                ),
              ),
              3.w.widthBox,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: colors().splashscreenbacground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      2.h.heightBox,
                      Text("Reptions\n( Reps )"),
                      2.h.heightBox,
                      Text("20"),
                      2.h.heightBox,
                      Icon(

                        Icons.arrow_drop_down_circle_rounded,color: Colors.white,size: 30,
                      ),
                      2.h.heightBox,

                    ],
                  ),
                ),
              ),
              3.w.widthBox,
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: colors().splashscreenbacground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      2.h.heightBox,
                      Text("Reptions\n( Reps )"),
                      2.h.heightBox,
                      Text("20"),
                      2.h.heightBox,
                      Icon(

                        Icons.arrow_drop_down_circle_rounded,color: Colors.white,size: 30,
                      ),
                      2.h.heightBox,

                    ],
                  ),
                ),
              ),
              3.w.widthBox,
            ],
          ),

         Container(
           padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
           margin:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),

           decoration: BoxDecoration(
               color: colors().white,
               borderRadius: BorderRadius.circular(12),
               boxShadow: [new BoxShadow(
                   color: Color(0xff000000).withOpacity(0.2),
                   blurRadius: 5.0,
                   offset: Offset(0,1)
               ),]

           ),
           child: TextField(
             maxLines: 7,
             minLines: 5,
             decoration: InputDecoration(
               hintText: "Instructions & notes : ",
                 hintStyle: TextStyle(
                   color: Color(0xff303030),
                   fontSize: 17,
                 )
                   ,border: InputBorder.none
             ),
           ),
         ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [




                  Expanded(
                      flex:6,
                      child: Text("Add another exercise", style: TextStyle(color: Color(0xff000000),fontSize: 20,fontWeight: FontWeight.bold))),
                  Expanded(
                    flex:1,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: colors().splashscreenbacground,
                          shape: BoxShape.circle
                      ),
                      child: Icon(Icons.add,color: Colors.white,size: 30,),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Allow the client to send me comments regarding the exercises:",
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 15,
                    ),
                  ),
                ),
                FlutterSwitch(
                  activeSwitchBorder: Border.all(color: Color(0xff000000)),
                  inactiveSwitchBorder: Border.all(color: Color(0xff000000)) ,

                  width: 52.0,
                  height: 25.0,
                  valueFontSize: 10.0,
                  toggleSize: 25.0,
                  value: status,
                  borderRadius: 30.0,
                  activeToggleColor: colors().splashscreenbacground,

                  // showOnOff: true,
                  activeColor: colors().white,
                  inactiveColor: colors().white,

                  toggleColor: Color(0xff707070),
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                )

              ],
            ),
            2.h.heightBox,
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Allow the client to send me comments regarding the exercises:",
                    style: TextStyle(
                      color: Color(0xff707070),
                      fontSize: 15,
                    ),
                  ),
                ),
                FlutterSwitch(
                  activeSwitchBorder: Border.all(color: Color(0xff000000)),
                  inactiveSwitchBorder: Border.all(color: Color(0xff000000)) ,

                  width: 52.0,
                  height: 25.0,
                  valueFontSize: 10.0,
                  toggleSize: 25.0,
                  value: status,
                  borderRadius: 30.0,
                  activeToggleColor: colors().splashscreenbacground,

                  // showOnOff: true,
                  activeColor: colors().white,
                  inactiveColor: colors().white,

                  toggleColor: Color(0xff707070),
                  onToggle: (val) {
                    setState(() {
                      status = val;
                    });
                  },
                )

              ],
            ),
            2.h.heightBox,

            Container(
              padding: EdgeInsets.all(10),
              margin:  EdgeInsets.all(10),
              decoration: BoxDecoration(

                  color: colors().splashscreenbacground,
                  borderRadius: BorderRadius.circular(10)

              ),

              child:Center(
                child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 23),
                ),),
            ),


          ],
        ),
      ),
    ));
  }
}
