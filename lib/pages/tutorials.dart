import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';
class tutorials extends StatefulWidget {
  const tutorials({Key? key}) : super(key: key);

  @override
  State<tutorials> createState() => _tutorialsState();
}

class _tutorialsState extends State<tutorials> {
 List<DropdownModel>? list = [
         DropdownModel(isTrue: false, content: "Contecy will ahopw nhefg", title: "How to create a training program andsave it in the library"),
   DropdownModel(isTrue: false, content: "Contecy will ahopw nhefg", title: "How to create a training program andsave it in the library"),
   DropdownModel(isTrue: false, content: "Contecy will ahopw nhefg", title: "How to create a training program andsave it in the library"),
   DropdownModel(isTrue: false, content: "Contecy will ahopw nhefg", title: "How to create a training program andsave it in the library"),
   DropdownModel(isTrue: false, content: "Contecy will ahopw nhefg", title: "How to create a training program andsave it in the library"),
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
              child: Text("Tutorials  ",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(),
               Container(
                 padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 1.5.h),
                 margin:EdgeInsets.symmetric(horizontal: 3.w,vertical: 1.5.h),
                 decoration: BoxDecoration(
                     color: colors().white,
                     borderRadius: BorderRadius.circular(12),
                     boxShadow: [new BoxShadow(
                         color: Color(0xff000000).withOpacity(0.2),
                         blurRadius: 2.0,
                         offset: Offset(0,1)
                     ),]

                 ),
                 child: Text("FAQ",style: TextStyle(fontSize: 20,color: colors().splashscreenbacground),)
               ),
             ],

            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 3.w,vertical: 0.2.h),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(

                      // maxLines: 6,
                      // minLines: 5,
                      decoration: InputDecoration(
                        hintText: "Search",
                        suffixIcon: Icon(Icons.search,size: 30,color: Color(0xff000000),),
                        //border: InputBorder.none,
                          fillColor:colors().white ,
                        //  filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 2.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                            color: Color(0xff707070)
                          ),
                        ),




                      ),
                    ),
                  ),
                ],
              ),
            ),
            2.h.heightBox,
            Column(
              children: [
                ListView.builder(
                  physics: ScrollPhysics(),
                  itemCount:list?.length,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                  return   Container(
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
                    child: Column(
                      children: [

                        Row(
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
                        Visibility(
                          visible: list![index].isTrue,
                            child:
                        Column(
                          children: [
                            Text(list![index].content)
                          ],
                        )
                        ),

                      ],
                    ),
                  );
                }),
              ],
            ),


          ],
        ),
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



