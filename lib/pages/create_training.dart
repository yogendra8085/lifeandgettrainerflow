
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';

class createtrainingpage extends StatefulWidget {
  const createtrainingpage({Key? key}) : super(key: key);

  @override
  State<createtrainingpage> createState() => _createtrainingpageState();
}

class _createtrainingpageState extends State<createtrainingpage> {
  bool status=false;
  int index=0;
  bool istrue=true;
  List<String> programs=["Active Programs",'On hold Programs'];
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
      body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                   padding: EdgeInsets.symmetric(vertical: 14),


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
                      child: Center(
                        child: Text("Training\nLibrary",style: TextStyle(color: colors().black,fontSize: 22),),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 14),
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
                      child: Center(
                        child: Text("Training\nLibrary",style: TextStyle(color: colors().black,fontSize: 22),),
                      ),
                    ),
                  )
                ],
              ),
              4.h.heightBox,
              Container(
                padding: EdgeInsets.symmetric(vertical: 14),

               width: double.infinity,
                decoration: BoxDecoration(
                  color:  colors().white,
                  borderRadius: BorderRadius.circular(10.0),

                border: Border.all(color:colors().splashscreenbacground,),


                ),
                child: Center(
                  child: Column(
                    children: [
                      Text("Create a Training",style: TextStyle(color: colors().black,fontSize: 22),),
                      Text("or",style: TextStyle(color: colors().splashscreenbacground,fontSize: 22),),
                      Text("Diet Program",style: TextStyle(color: colors().black,fontSize: 22),),
                    ],
                  ),
                ),
              ),
              3.h.heightBox,
              Text("My current Programs ",style: TextStyle(color: colors().black,fontSize: 22)),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for(int i=0;i<2;i++)...[
                  Expanded(
                      child:
                      InkWell(
                        onTap: (){
                          setState(() {
                            index=i;
                            istrue=!istrue;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            color:index==i? colors().splashscreenbacground:Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: index!=i?colors().splashscreenbacground:Colors.transparent)

                          ),
                          child: Center(child: Text(programs[i],style: TextStyle(color:index!=i ?colors().black:colors().white,fontSize: 15))),
                        ),
                      )
                  ),

                  4.w.widthBox,
                  ],

                ],
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
                        child:istrue?
                          FlutterSwitch(
                          activeSwitchBorder: Border.all(color: Color(0xff000000)),
                          inactiveSwitchBorder: Border.all(color: Color(0xff000000)) ,
                          width: 52.0,
                          height: 25.0,
                          valueFontSize: 10.0,
                          toggleSize: 25.0,
                          value: status,
                          borderRadius: 30.0,

                          // showOnOff: true,
                          activeColor: colors().white,
                          inactiveColor: colors().white,



                          toggleColor: Color(0xff4F9726),
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ):Text("On hold",style: TextStyle(color: Color(0xffFFD600),fontSize: 16),),
                    ),
                    2.w.widthBox,
                    Expanded(
                        flex:1,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 0.6.h),
                          decoration: BoxDecoration(
                            color: colors().splashscreenbacground,
                            borderRadius: BorderRadius.circular(50)
                          ),
                            child: Center(child: Text("View",style: TextStyle(color: colors().white,fontSize: 14))))),
                  ],
                ),
              ),
              2.h.heightBox,



            ],
          ),
        ),
      ),
    ));
  }
}
