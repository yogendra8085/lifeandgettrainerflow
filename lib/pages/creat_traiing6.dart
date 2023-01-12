import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

import '../contantstring/colors.dart';

class creattrainingpage6 extends StatefulWidget {
  const creattrainingpage6({Key? key}) : super(key: key);

  @override
  State<creattrainingpage6> createState() => _creattrainingpage6State();
}

class _creattrainingpage6State extends State<creattrainingpage6> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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

                    child: Text("Step 1 :",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text("Create the program .",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 0.5.h),
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
              child: ListTile(
                title: Text("Training & Diet Program",style: TextStyle(color: Color(0xff707070),fontSize: 20)),
                trailing: Icon(Icons.keyboard_arrow_down,color: Color(0xff717171),size: 25,),
              )
              ,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 0.5.h),
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
              child: ListTile(
                title: Row(

                  children: [
                    Text("Duration",style: TextStyle(color: Color(0xff707070),fontSize: 20)),
                    10.w.widthBox,
                    Container(
                      decoration: BoxDecoration(
                        color: colors().splashscreenbacground,
                        shape: BoxShape.circle,

                      ),
                      child: Center(
                        child: Icon(Icons.add,color: Colors.white,),
                      ),
                    ),
                    3.w.widthBox,
                    Text("30",style: TextStyle(color: Color(0xff707070),fontSize: 20,fontWeight: FontWeight.bold)),
                    3.w.widthBox,
                    Container(
                      decoration: BoxDecoration(
                        color: colors().splashscreenbacground,
                        shape: BoxShape.circle,

                      ),
                      child: Center(
                        child: Icon(Icons.horizontal_rule,color: Colors.white,),
                      ),
                    )

                  ],
                ),


              )
              ,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
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
                    child: Center(
                      child: Text("Choose a program from the library",style: TextStyle(color: Colors.black,fontSize: 18),textAlign: TextAlign.center,),
                    )
                    ,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
                    margin:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),

                    decoration: BoxDecoration(
                        color: colors().splashscreenbacground,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [new BoxShadow(
                            color: Color(0xff000000).withOpacity(0.2),
                            blurRadius: 5.0,
                            offset: Offset(0,1)
                        ),]

                    ),
                    child: Center(
                      child: Text("Create a new program ",style: TextStyle(color: Colors.black,fontSize: 18),textAlign: TextAlign.center,),
                    )
                    ,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
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
                    child: Center(
                      child: Text("Training Program",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    )
                    ,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 2.h),
                    margin:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),

                    decoration: BoxDecoration(
                        color: colors().splashscreenbacground,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [new BoxShadow(
                            color: Color(0xff000000).withOpacity(0.2),
                            blurRadius: 5.0,
                            offset: Offset(0,1)
                        ),]

                    ),
                    child: Center(
                      child: Text("Diet Program ",style: TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
                    )
                    ,
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(

                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: colors().white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [new BoxShadow(
                              color: Color(0xff000000).withOpacity(0.2),
                              blurRadius: 5.0,
                              offset: Offset(0,1)
                          ),]

                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.menu,color: Colors.black,),
                          Text("Exercise Set / Search",style: TextStyle(color: colors().splashscreenbacground,fontSize: 18),),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      )
                    ),
                  ),
                  2.w.widthBox,
                  Expanded(
                    flex: 2,
                    child: Container(
                        padding: EdgeInsets.all(10),

                      decoration: BoxDecoration(
                          color: colors().white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [new BoxShadow(
                              color: Color(0xff000000).withOpacity(0.2),
                              blurRadius: 5.0,
                              offset: Offset(0,1)
                          ),]

                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Text("Days",style: TextStyle(color: colors().splashscreenbacground,fontSize: 18),),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 0.5.h),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1.1 Exercise Set',style:
                  TextStyle(color: colors().splashscreenbacground,fontSize: 18),),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: colors().splashscreenbacground,
                        ),
                      )
                    ],
                  ),
                  Text('1.2 Legs Exercise  Set',
                    style: TextStyle(color: colors().splashscreenbacground,fontSize: 18),)
                 , Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: colors().splashscreenbacground,
                        ),
                      )
                    ],
                  ),

                ],


              )
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Add a new exercise set", style: TextStyle(color: colors().black,fontSize: 20,fontWeight: FontWeight.bold)),

                  2.w.widthBox,
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: colors().splashscreenbacground,
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.add,color: Colors.white,size: 30,),
                  )
                ],
              ),
            ),


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
            ),

          ],
        ),
      ),
    ));
  }
}
