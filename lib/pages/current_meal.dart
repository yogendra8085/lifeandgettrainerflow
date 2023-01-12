import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';
class currentmealpage extends StatefulWidget {
  const currentmealpage({Key? key}) : super(key: key);

  @override
  State<currentmealpage> createState() => _currentmealpageState();
}

class _currentmealpageState extends State<currentmealpage> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar:  AppBar(
      backgroundColor: colors().splashscreenbacground,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back,color: colors().white,),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Meals Library",style: TextStyle(color: colors().white,fontSize: 23),),
          )
        ],),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
            child: Text("Here are the induviual meals that you can add to your meals set to create a program",style:
              TextStyle(color:Color(0xff707070),fontSize: 16, ),textAlign: TextAlign.center,),
          ),
         Text('My Current Meal',style: TextStyle(color: Color(0xff00A7FF),fontSize: 22),),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 2.h),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                    child: Text('My Current Meal',style: TextStyle(color: Color(0xff000000),fontSize: 18),)),
                Expanded(
                  flex:6,
                  child: Container(

                    child: DropdownButtonHideUnderline(

                      child: DropdownButton2(
                        customButton: Row(
                          children: [
                            Text(selectedValue==null?"Meal group ":selectedValue.toString()
                                ,style:  TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 25,
                              color: Color(0xff717171),
                            ),
                          ],
                        ),

                        items: items
                            .map((item) =>
                            DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style:  TextStyle(
                                  fontSize: 18,
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
                          size: 25,
                          color: Color(0xff717171),
                        ),
                        buttonHeight: 3.5.h,
                        // buttonWidth: 20.w,
                        itemHeight: 5.h,
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 0,
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
                    flex:3,
                    child: Text("Egg with bread ",style: TextStyle(color: colors().black,fontSize: 16))),

                Expanded(
                    flex:2,
                    child: Text("Breakfast",style: TextStyle(color: colors().black,fontSize: 16))),

                Expanded(
                    flex:1,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 0.6.h),
                        decoration: BoxDecoration(
                            color: colors().splashscreenbacground,
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
                    flex:3,
                    child: Text("Egg with bread ",style: TextStyle(color: colors().black,fontSize: 16))),

                Expanded(
                    flex:2,
                    child: Text("Lunch",style: TextStyle(color: colors().black,fontSize: 16))),

                Expanded(
                    flex:1,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 0.6.h),
                        decoration: BoxDecoration(
                            color: colors().splashscreenbacground,
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
                    flex:3,
                    child: Text("Egg with bread ",style: TextStyle(color: colors().black,fontSize: 16))),

                Expanded(
                    flex:2,
                    child: Text("Dinner",style: TextStyle(color: colors().black,fontSize: 16))),

                Expanded(
                    flex:1,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 0.6.h),
                        decoration: BoxDecoration(
                            color: colors().splashscreenbacground,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Text("View",style: TextStyle(color: colors().white,fontSize: 14))))
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(10),
            margin:EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colors().splashscreenbacground,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add,color: colors().white,size: 35,),
                2.w.widthBox,
                Text("Add  meal group ",style: TextStyle(fontSize: 24,color: colors().white),)
              ],
            ),
          )

        ],
      ),
    ));
  }
}
