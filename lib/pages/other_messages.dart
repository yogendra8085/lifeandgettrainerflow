import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';

class othermessagespage extends StatefulWidget {
  const othermessagespage({Key? key}) : super(key: key);

  @override
  State<othermessagespage> createState() => _othermessagespageState();
}

class _othermessagespageState extends State<othermessagespage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar:  AppBar(
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
              child: Text("Message ",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: Column(
        children: [
          2.h.heightBox,
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Other messages",style: TextStyle(color: Color(0xff000000),fontSize: 24),)
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
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
              child: ListTile(
                leading:  Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('https://i.pinimg.com/originals/a3/fb/5d/a3fb5def518705c9cc739299234c2779.jpg'),

                        fit: BoxFit.fill
                    ),
                  ),
                ),
                title: Text("Ibrahim ",style: TextStyle(color: colors().black,fontSize: 23)),
                trailing:  Icon(Icons.messenger_outline_rounded,color:Color(0xff000000) ,size: 30,),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              height: MediaQuery.of(context).size.height*.54,
              margin: EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 3),
              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0,3)
                  ),]

              ),
              child: Column(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      maxLines: 5,
                      minLines: 1,
                      decoration: InputDecoration(

                        hintText: "Hi,Good job",
                        suffixIcon: Container(
                          margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.w),
                          width: 20.w,
                          decoration: BoxDecoration(
                              color: colors().splashscreenbacground,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Send",style: TextStyle(color: colors().white,fontSize: 18),),
                          ),
                        ),
                        //border: InputBorder.none,
                        fillColor:colors().white ,
                        //  filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: colors().splashscreenbacground
                          ),
                        ),




                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
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
              child: ListTile(
                leading:  Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage('https://i.pinimg.com/originals/a3/fb/5d/a3fb5def518705c9cc739299234c2779.jpg'),

                        fit: BoxFit.fill
                    ),
                  ),
                ),
                title: Text("Ibrahim ",style: TextStyle(color: colors().black,fontSize: 23)),
                trailing:  Icon(Icons.messenger_outline_rounded,color:Color(0xff000000) ,size: 30,),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
