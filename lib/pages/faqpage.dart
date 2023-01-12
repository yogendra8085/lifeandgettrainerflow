import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';
class faqpage extends StatefulWidget {
  const faqpage({Key? key}) : super(key: key);

  @override
  State<faqpage> createState() => _faqpageState();
}

class _faqpageState extends State<faqpage> {
  List<DropdownModel>? list = [
    DropdownModel(isTrue: false, content: "each two weeks you get paid the amount in the balance. And the new amount you get in the next two weeks. For any issue and not reveiving your payment, you always can contact us. ", title: "When I get paid"),
    DropdownModel(isTrue: false, content: "each two weeks you get paid the amount in the balance. And the new amount you get in the next two weeks. For any issue and not reveiving your payment, you always can contact us", title: "Can I send two program at a time"),

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(  appBar:  AppBar(
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
            child: Text("Tutorials  ",style: TextStyle(color: colors().white,fontSize: 23),),
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
