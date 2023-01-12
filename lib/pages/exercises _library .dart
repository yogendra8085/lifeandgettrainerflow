import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';
class exercisespage extends StatefulWidget {
  const exercisespage({Key? key}) : super(key: key);

  @override
  State<exercisespage> createState() => _exercisespageState();
}

class _exercisespageState extends State<exercisespage> {
  List<String> list=["Excercises\nLibrary","Excercises Set\nLibrary","Training library\nPrograms"
  ];
  List<Color> color=[Color(0xffE4F3FF),Color(0xffCAE5FB),Color(0xffB0D8F9),Color(0xff98CDF9)];
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
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
              child: Text("Training Library",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(

            shrinkWrap: true,
            itemCount: list.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.6),
                crossAxisCount:  (orientation == Orientation.portrait) ? 2 : 3),
            itemBuilder: (BuildContext context, int index) {
              return Container(

                margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),

                decoration: BoxDecoration(
                    color: color[index],
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [



                    Text(list[index],style: TextStyle(color: Color(0xff000000),fontSize: 18),textAlign: TextAlign.center,)
                  ],),
              );
            },
          ),
        ],
      ),
    ));
  }
}
