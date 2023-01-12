
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(
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
          child: Text("Notification",style: TextStyle(color: colors().white,fontSize: 23),),
        )
      ],),),
      body: Column(

        children: [
          4.h.heightBox,
          Container(

            margin: EdgeInsets.symmetric(horizontal: 2.w),
            decoration: BoxDecoration(
              color: colors().white,
              borderRadius: BorderRadius.circular(9),
                boxShadow: [new BoxShadow(
                    color: Color(0xff000000).withOpacity(0.2),
                    blurRadius: 2.0,
                    offset: Offset(0,1)
                ),]
              
            ),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.start     ,
              children: [
              Expanded(
                flex:4,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  ,style: TextStyle(color: Color(0xff707070),fontSize: 15)),
                ),
              ),
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 1.w,vertical: 2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.email_rounded,color: colors().splashscreenbacground,size: 35,),
                        Text("Reply",style: TextStyle(color: Color(0xff0066FF),fontSize: 18))
                      ],
                    ),
                  ),
                ),

              ],
            )
            // ListTile(
            //
            //   title: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
            //   ,style: TextStyle(color: Color(0xff707070),fontSize: 15),
            //   ),
            //   trailing: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Icon(Icons.email_rounded,color: colors().splashscreenbacground,size: 35,),
            //       Text("Reply",style: TextStyle(color: Color(0xff0066FF),fontSize: 18))
            //     ],
            //   ),
            // ),
          ),
          1.h.heightBox,
          Container(

              margin: EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start     ,
                children: [
                  Expanded(
                    flex:4,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                          ,style: TextStyle(color: Color(0xff707070),fontSize: 15)),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 1.w,vertical: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: colors().splashscreenbacground,
                              borderRadius: BorderRadius.circular(100),
                              //shape: BoxShape.circle
                            ),
                              child: Icon(Icons.add,color: colors().white,size: 35,)),
                          Text("Add the program",style: TextStyle(color: Color(0xff0066FF),fontSize: 14))
                        ],
                      ),
                    ),
                  ),

                ],
              )
            // ListTile(
            //
            //   title: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
            //   ,style: TextStyle(color: Color(0xff707070),fontSize: 15),
            //   ),
            //   trailing: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Icon(Icons.email_rounded,color: colors().splashscreenbacground,size: 35,),
            //       Text("Reply",style: TextStyle(color: Color(0xff0066FF),fontSize: 18))
            //     ],
            //   ),
            // ),
          ),
          1.h.heightBox,
          Container(

              margin: EdgeInsets.symmetric(horizontal: 2.w),
              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.start     ,
                children: [
                  Expanded(
                    flex:4,
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                          ,style: TextStyle(color: Color(0xff707070),fontSize: 15)),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 1.w,vertical: 2.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.email_rounded,color: colors().splashscreenbacground,size: 35,),
                          Text("Done",style: TextStyle(color: Color(0xff0066FF),fontSize: 18))
                        ],
                      ),
                    ),
                  ),

                ],
              )

          )
        ],
      ),
    )
    );
  }
}
