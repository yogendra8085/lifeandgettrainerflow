import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

import '../contantstring/colors.dart';
class creattrainingpage5 extends StatefulWidget {
  const creattrainingpage5({Key? key}) : super(key: key);

  @override
  State<creattrainingpage5> createState() => _creattrainingpage5State();
}

class _creattrainingpage5State extends State<creattrainingpage5> {
  FlickManager flickManager= FlickManager(

    videoPlayerController:
    VideoPlayerController.network("http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
    autoPlay: false,



  );
  bool value=false;
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
                maxLines: 5,
                minLines: 4,
                decoration: InputDecoration(

                  hintText: "Rules & Regulations",

                  border: InputBorder.none,
                  fillColor:colors().white ,
                  //  filled: true,
                  contentPadding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(8),
                  //   borderSide: BorderSide(
                  //       width: 0,
                  //       style: BorderStyle.none,
                  //       color: colors().white
                  //   ),
                  // ),




                ),
              ),
            ),
            Text("The Program from outside",style: TextStyle(color: colors().splashscreenbacground,fontSize: 20,fontWeight: FontWeight.bold)),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              decoration: BoxDecoration(
                color: Color(0xffC5F7FF),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Expanded(
                child: Row(

                  children: [
                    Container(
                      width: 30.w,
                      height: 18.h,
                      margin: EdgeInsets.all(15),
                        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/5/57/Shri_Virat_Kohli_for_Cricket%2C_in_a_glittering_ceremony%2C_at_Rashtrapati_Bhavan%2C_in_New_Delhi_on_September_25%2C_2018_%28cropped%29.JPG",fit: BoxFit.cover,)),
                   Expanded(
                     flex: 8,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,


                       children: [
                         Text("Diet Plan",style: TextStyle(color: colors().black,fontSize: 17,fontWeight: FontWeight.bold)),
                         0.7.h.heightBox
                         ,Text("Diet PlanCooked Meals from Healthy Resturant",style: TextStyle(color: colors().black,fontSize: 13,)),
                         0.7.h.heightBox,
                         Text("2 grocery Food + Recipies",style: TextStyle(color: colors().black,fontSize: 13,)),
                         0.7.h.heightBox,
                         Text(" \$90",style: TextStyle(color: colors().splashscreenbacground,fontSize: 13,))
                       ],


                     ),
                   )
                  ],
                ),
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
