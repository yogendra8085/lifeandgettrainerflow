
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

import '../contantstring/colors.dart';

class creattrainingdietprogrampage extends StatefulWidget {
  const creattrainingdietprogrampage({Key? key}) : super(key: key);

  @override
  State<creattrainingdietprogrampage> createState() => _creattrainingdietprogrampageState();
}

class _creattrainingdietprogrampageState extends State<creattrainingdietprogrampage> {
  FlickManager flickManager= FlickManager(

    videoPlayerController:
    VideoPlayerController.network("http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
    autoPlay: false,



  );
  bool value=false;
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
                      child: Text("Create the program cover for potential clients .",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(

                    child: Text("Step 1 :",style: TextStyle(color: Colors.transparent,fontSize: 16,fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text("This is what potantial clients is going to see when they want to purchase the program in your profile",style: TextStyle(color: Color(0xff707070),fontSize: 14,),
                    ),
                  ),
                ],
              ),
            ),
            2.h.heightBox,
            Text("Move it , Shake it , Lift it .",style: TextStyle(color: colors().splashscreenbacground,fontSize: 20,fontWeight: FontWeight.bold)),
            2.h.heightBox,
            FlickVideoPlayer(

              flickManager: flickManager as FlickManager,
              flickVideoWithControls: FlickVideoWithControls(
                videoFit: BoxFit.cover,
                controls: FlickPortraitControls(

                ),
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
                title: Text("Service",style: TextStyle(color: Color(0xff707070),fontSize: 20)),
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
                title: Text("Program",style: TextStyle(color: Color(0xff707070),fontSize: 20)),
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
                    Text("Program",style: TextStyle(color: Color(0xff707070),fontSize: 20)),
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
                    2.w.widthBox,
                    Text("30",style: TextStyle(color: Color(0xff707070),fontSize: 20,fontWeight: FontWeight.bold)),
                    2.w.widthBox,
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
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: this.value,
                        onChanged: ( value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text(
                        'Training Program',
                        style: TextStyle(fontSize: 20.0,color: Color(0xff707070)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: this.value,
                        onChanged: ( value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text(
                        'Diet Program',
                        style: TextStyle(fontSize: 20.0,color: Color(0xff707070)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: this.value,
                        onChanged: ( value) {
                          setState(() {
                            this.value = value!;
                          });
                        },
                      ),
                      Text(
                        'Both ( Training & Diet program )',
                        style: TextStyle(fontSize: 20.0,color: Color(0xff707070)),
                      ),
                    ],
                  )
                ],
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
                title: Text("Base Price ",style: TextStyle(color: Color(0xff707070),fontSize: 20),),
                trailing:Text("\$99.99",style: TextStyle(color: Color(0xff707070),fontSize: 20,fontWeight: FontWeight.bold),),
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
                title: Text("Total Price",style: TextStyle(color: Color(0xff707070),fontSize: 20),),
                trailing:Text("\$110.99",style: TextStyle(color: Color(0xff707070),fontSize: 20,fontWeight: FontWeight.bold),),
                subtitle:Text("Total Price",style: TextStyle(color: Color(0xff707070),fontSize: 14),),
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
