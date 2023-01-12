import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';

import '../contantstring/colors.dart';
import '../controller/image_picker.dart';
class TrainerProfilepage extends StatefulWidget {
  const TrainerProfilepage({Key? key}) : super(key: key);

  @override
  State<TrainerProfilepage> createState() => _TrainerProfilepageState();
}

class _TrainerProfilepageState extends State<TrainerProfilepage> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;
  bool status = false;
  bool EssentialInfo=false;
 // VideoPlayerController ? videocontroller;
  final  c = Get.put(imagepicker());
  FlickManager ?flickManager;
  @override
  void initState() {
    super.initState();


  }
  loaddata(String path){
    flickManager = FlickManager(

      videoPlayerController:
      VideoPlayerController.file(File(path)),
      autoPlay: false,



    );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
              child: Text("Rating & review",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: SingleChildScrollView(
        child: Column(children: [
          1.h.heightBox,
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("Essential Info",style: TextStyle(fontSize: 16,color: Color(0xff000000)),),
                InkWell(
                    onTap: (){

                      setState(() {
                        EssentialInfo=!EssentialInfo;
                      });
                    },
                    child: Icon(EssentialInfo?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down,color: Color(0xffB2B2B2),))
              ],
            ),
          ),

          Visibility(
              visible: EssentialInfo,
              child:
              Column(children: [
                Stack(
                  children: [
                    Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        color: colors().white,
                        shape: BoxShape.circle,
                        border: Border.all(color: colors().splashscreenbacground),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.0,
                              color: colors().splashscreenbacground
                          ),

                        ],
                      ),
                      padding: EdgeInsets.all(3),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/7/7e/Virat_Kohli.jpg",
                          fit: BoxFit.cover,


                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff403F3F),
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(3),
                        child: Icon(Icons.edit,color: colors().white,size: 12,),
                      ),
                    )
                  ],
                ),
                1.5.h.heightBox,
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:2.w,vertical:1.h ),
                  child: Container(
                    width: double.infinity,
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
                    child:Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 2.w),
                            child: Text("Full Name",style: TextStyle(color: colors().black,fontSize: 16,),),
                          ),
                          // 1.5.h.heightBox,
                          Row(
                            children: [
                              Expanded(
                                  flex:1,
                                  child: Icon(Icons.person,color: Color(0xff6A6A6A),)),
                              3.w.widthBox,

                              Expanded(
                                flex:12,
                                child: TextField (

                                  decoration: InputDecoration(

                                    border: InputBorder.none,
                                    //  labelText: 'Enter Name',
                                    hintText: 'Hess Barker',
                                    hintStyle: TextStyle(color: colors().black,fontSize: 14,),
                                    // prefixIcon: Icon(Icons.person),



                                  ),
                                ),
                              ),
                            ],
                          ),
                          1.h.heightBox,
                        ],),
                    ) ,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:2.w,vertical:1.h ),
                  child: Container(
                    width: double.infinity,
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
                    child:Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 2.w),
                            child: Text("Email Address",style: TextStyle(color: colors().black,fontSize: 16,),),
                          ),
                          // 1.5.h.heightBox,
                          Row(
                            children: [
                              Expanded(
                                  flex:1,
                                  child: Icon(Icons.alternate_email,color: Color(0xff6A6A6A),)),
                              3.w.widthBox,

                              Expanded(
                                flex:12,
                                child: TextField (

                                  decoration: InputDecoration(

                                    border: InputBorder.none,
                                    //  labelText: 'Enter Name',
                                    hintText: 'hessbarker@gmail.com',
                                    hintStyle: TextStyle(color: colors().black,fontSize: 14,),
                                    // prefixIcon: Icon(Icons.person),



                                  ),
                                ),
                              ),
                            ],
                          ),
                          1.h.heightBox,
                        ],),
                    ) ,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:2.w,vertical:1.h ),
                  child: Container(
                    width: double.infinity,
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
                    child:Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 2.w),
                            child: Text("Phone Number",style: TextStyle(color: colors().black,fontSize: 16,),),
                          ),
                          // 1.5.h.heightBox,
                          Row(
                            children: [
                              Expanded(
                                  flex:1,
                                  child: Icon(Icons.phone_android_sharp,color: Color(0xff6A6A6A),)),
                              3.w.widthBox,

                              Expanded(
                                flex:12,
                                child: TextField (

                                  decoration: InputDecoration(

                                    border: InputBorder.none,
                                    //  labelText: 'Enter Name',
                                    hintText: '+965 222 222 222',
                                    hintStyle: TextStyle(color: colors().black,fontSize: 14,),
                                    // prefixIcon: Icon(Icons.person),



                                  ),
                                ),
                              ),
                            ],
                          ),
                          1.h.heightBox,
                        ],),
                    ) ,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:2.w,vertical:1.h ),
                  child: Container(
                    width: double.infinity,
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
                    child:Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 2.w),
                            child: Text("Country",style: TextStyle(color: colors().black,fontSize: 16,),),
                          ),
                          // 1.5.h.heightBox,
                          Row(
                            children: [
                              Expanded(
                                  flex:1,
                                  child: Icon(Icons.map_outlined,color: Color(0xff6A6A6A),)),
                              3.w.widthBox,

                              Expanded(
                                flex:12,
                                child: TextField (

                                  decoration: InputDecoration(

                                    border: InputBorder.none,
                                    //  labelText: 'Enter Name',
                                    hintText: 'Country',
                                    hintStyle: TextStyle(color: colors().black,fontSize: 14,),
                                    // prefixIcon: Icon(Icons.person),



                                  ),
                                ),
                              ),
                            ],
                          ),
                          1.h.heightBox,
                        ],),
                    ) ,
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:2.w,vertical:1.h ),
                  child: GetBuilder(
                    init: imagepicker(),
                     builder:   (controller)=>
                     InkWell(
                      onTap: ()  {
                         c.getimage(context);
                       print(c.paths?.length);

                      },
                      child: Container(
                        width: double.infinity,

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
                        child:Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
                          child:

                              // 1.5.h.heightBox,
                              Column(
                                children: [
                                  Visibility(
                                    visible: controller.paths.length>0?true:false,
                                    child: SizedBox(
                                      height: 150,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: controller.paths?.length,
                                          itemBuilder: (context,index){

                                        loaddata(c.paths[index].imagepath);










                                            return Padding(
                                              padding:  EdgeInsets.symmetric(horizontal: 2.w),
                                              child: Stack(
                                                 alignment: Alignment.center,
                                                clipBehavior: Clip.none,
                                                children: [
                                                  Container(
                                                    width:50.w,
                                                    child:c.paths?[index].type=="AssetType.image"?Image.file(File(( controller.paths?[index].imagepath).toString()),fit: BoxFit.cover,
                                                      ):Expanded(
                                                        child: FlickVideoPlayer(

                                                            flickManager: flickManager as FlickManager,
                                                          flickVideoWithControls: FlickVideoWithControls(
                                                            videoFit: BoxFit.cover,
                                                            controls: FlickPortraitControls(

                                                            ),
                                                          ),








                                                        ),
                                                      ),
                                                  ),
                                                  Positioned(
                                                    right: -4,
                                                    top: -0.9,
                                                    child: InkWell(
                                                      onTap: (){
                                                        controller.remove(index);
                                                        flickManager?.flickVideoManager?.dispose();


                                                      },
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          color: Colors.red,
                                                          shape: BoxShape.circle,

                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(2.5),
                                                          child: Icon(Icons.close,color: colors().white,size: 12,),
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                  2.h.heightBox,
                                  Row(
                                    children: [
                                      Expanded(
                                          flex:2,
                                          child:Container(
                                            padding: EdgeInsets.symmetric(horizontal: 2,vertical: 3),
                                            decoration: BoxDecoration(
                                              color: colors().splashscreenbacground,
                                              shape: BoxShape.circle
                                            ),
                                            child: Center(child: Icon(Icons.add,color: colors().white,size:35 ,)),
                                          )
                                      ),
                                      3.w.widthBox,
                                  Expanded(
                                    flex: 10,
                                      child: Text('Add a pics / videos about yourself and what you offer '))
                                    ],
                                  ),
                                ],
                              ),


                        ) ,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Coach Sulaiman Jamal  ",style: TextStyle(fontSize: 18,color: Color(0xff000000)),),
                      Row(

                        children: [
                          Icon(Icons.location_on),
                          Container(

                            child: DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                hint: Text(
                                  'Country',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: colors().black
                                  ),
                                ),
                                items: items
                                    .map((item) =>
                                    DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style:  TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                    .toList(),
                                value: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value as String;
                                  });
                                },
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 30,
                                  color: Color(0xff717171),
                                ),
                                buttonHeight: 3.5.h,
                                buttonWidth: 30.w,
                                itemHeight: 5.h,
                              ),
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3.w,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(

                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: Text(
                              'Basketball Coache',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: colors().black
                              ),
                            ),
                            items: items
                                .map((item) =>
                                DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style:  TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                                .toList(),
                            value: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value as String;
                              });
                            },
                            icon:  Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                              color: Color(0xff717171),
                            ),
                            buttonHeight: 3.5.h,
                            buttonWidth: 40.w,
                            itemHeight: 5.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 8.w),
                        child: Row(

                          children: [
                            Icon(Icons.fitness_center_outlined),
                            3.w.widthBox,
                            Text("Kuwait Club")
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
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
                    child: TextField(

                      maxLines: 6,
                      minLines: 5,
                      decoration: InputDecoration(
                        hintText: "About your self and what you offer  ",
                        border: InputBorder.none,
                       //  fillColor:colors().white ,
                       //  filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(8),
                        //   borderSide: BorderSide(
                        //     width: 0,
                        //     style: BorderStyle.none,
                        //   ),
                        // ),




                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(10),
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
                    child: Column(
                      children: [
                   
                        Row(
                          children: [
                            Expanded(
                                flex:2,
                                child:Container(
                                  padding: EdgeInsets.symmetric(horizontal: 2,vertical: 3),
                                  decoration: BoxDecoration(
                                      color: colors().splashscreenbacground,
                                      shape: BoxShape.circle
                                  ),
                                  child: Center(child: Icon(Icons.add,color: colors().white,size:35 ,)),
                                )
                            ),
                            3.w.widthBox,
                            Expanded(
                                flex: 10,
                                child: Text('Upload certificates and awards'))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Allow people to message you from your profile .",style: TextStyle(fontSize: 15,color:Color(0xff707070) ),),
                      )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
          child: FlutterSwitch(
            width: 52.0,
            height: 22.0,
            valueFontSize: 10.0,
            toggleSize: 20.0,
            value: status,
            borderRadius: 30.0,

            // showOnOff: true,
            activeColor: colors().splashscreenbacground,
            onToggle: (val) {
              setState(() {
                  status = val;
              });
            },
          ),
        ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: colors().splashscreenbacground,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 1.5.h),
                            child: Text("Update",style: TextStyle(fontSize: 23,color:Color(0xffFFFFFF) )),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: colors().white,
                            borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.red)
                        ),
                        child: Center(
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 1.5.h),
                            child: Text("Delete",style: TextStyle(fontSize: 23,color:Colors.black )),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                10.h.heightBox,
              ],)
          ),
        ],),
      ),
    ));
  }
}
