import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lifeandget_trainer/contantstring/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
class savepage extends StatefulWidget {
  const savepage({Key? key}) : super(key: key);

  @override
  State<savepage> createState() => _savepageState();
}

class _savepageState extends State<savepage> {

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF9FF),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
             Container(
               padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
               margin:  EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),

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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.cancel,color: colors().black,)
                  ],
                ),
                   Row(
                     children: [
                       Expanded(child: Text("Do you want to save the newexercises & the whole exercise set in your library ?",style: TextStyle(fontSize: 21),textAlign: TextAlign.center,),),
                     ],
                   ),
                   3.h.heightBox,
                   Row(
                     children: [
                       Expanded(
                         child: Material(
                           elevation: 1,
                           borderRadius: BorderRadius.circular(10),
                           child: Container(
                             padding: EdgeInsets.all(12),
                             decoration: BoxDecoration(
                               color: colors().splashscreenbacground,
                               borderRadius: BorderRadius.circular(10),



                             ),
                             child: Center(
                               child: Text("Save",style: TextStyle(color: Colors.white,fontSize: 19),),
                             ),
                           ),
                         ),
                       ),
                       2.w.widthBox,
                       Expanded(
                         child: Material(
                           elevation: 1,
                           borderRadius: BorderRadius.circular(10),
                           child: Container(
                             padding: EdgeInsets.all(12),

                             decoration: BoxDecoration(
                               color: colors().white,

                               borderRadius: BorderRadius.circular(10),

                             ),
                             child: Center(
                               child: Text("Save",style: TextStyle(color: Colors.black,fontSize: 19),),
                             ),
                           ),
                         ),
                       )
                     ],
                   )
                 ],
               ),
             )
        ],
      ) ,
    );
  }
}
