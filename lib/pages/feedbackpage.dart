import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';
class feedbackpage extends StatefulWidget {
  const feedbackpage({Key? key}) : super(key: key);

  @override
  State<feedbackpage> createState() => _feedbackpageState();
}

class _feedbackpageState extends State<feedbackpage> {
  List<DropdownModel>? list = [
    DropdownModel(isTrue: false, content: "each two weeks you get paid the amount in the balance. And the new amount you get in the next two weeks. For any issue and not reveiving your payment, you always can contact us. ", title: "When I get paid"),
    DropdownModel(isTrue: false, content: "each two weeks you get paid the amount in the balance. And the new amount you get in the next two weeks. For any issue and not reveiving your payment, you always can contact us", title: "Can I send two program at a time"),

  ];
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
              child: Text("Feedback ",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: Column(
        children: [
          3.h.heightBox,
          Column(
            children: [
              ListView.builder(
                  physics: ScrollPhysics(),
                  itemCount:list?.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return   Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.8.h),
                          margin:EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.h),
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
                          child: Row(
                            children: [
                              Expanded(
                                  flex:6,
                                  child: Text(list![index].title,style: TextStyle(fontSize: 16,color: Color(0xff5A5A5A)))),
                              Expanded(
                                  flex:1,
                                  child: InkWell(
                                      onTap: (){
                                        list![index].isTrue=!list![index].isTrue;
                                        setState(() {

                                        });
                                        print("onclick");
                                      },
                                      child: Icon( list![index].isTrue?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down,color:Color(0xff717171),size: 40 ,)

                                  ))
                            ],
                          ),
                        ),
                        Visibility(
                            visible: list![index].isTrue,
                            child:
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.8.h),
                              margin:EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.2.h),
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
                                  Text(list![index].content)
                                ],
                              ),
                            )
                        ),
                      ],
                    );
                  }),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: (){
              showDialog(
                barrierDismissible: true,
                context: context,

                builder: (ctx) => AlertDialog(
                    contentPadding: EdgeInsets.all(1.w),
                    insetPadding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    // title:  Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Text("Goals",style: TextStyle(color: colors().black,fontSize: 20,),),
                    //     Icon(Icons.close,color: Color(0xffC5C5C5),)
                    //   ],
                    // ),
                    content:Container(

                      width: 100.w,
                      height: 20.h,


                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                               Padding(
                                 padding:  EdgeInsets.symmetric(horizontal: 10.w),
                                 child: Text("We love hearing from you! Thank you for leaving feedback for us.",style: TextStyle(color: colors().black,fontSize: 22,),textAlign: TextAlign.center,),
                               )
                          ],
                      ),
                    )
                  // actions: <Widget>[
                  //   TextButton(
                  //     onPressed: () {
                  //       Navigator.of(ctx).pop();
                  //     },
                  //     child: Container(
                  //       color: Colors.green,
                  //       padding: const EdgeInsets.all(14),
                  //       child: const Text("okay"),
                  //     ),
                  //   ),
                  // ],
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 1.5.h),
              margin: EdgeInsets.symmetric(vertical: 1.5.h,horizontal: 3.w),
              decoration: BoxDecoration(
                color: colors().splashscreenbacground,
                borderRadius: BorderRadius.circular(10),

              ),
              child: Center(
                child: Text("Send",style: TextStyle(color: colors().white,fontSize: 23),),
              )                   ,
            ),
          )
        ],
      ),
    ));
  }
}
class DropdownModel {
  bool isTrue;
  String title;
  String content;
  DropdownModel({required this.isTrue,required this.content,required this.title});
}