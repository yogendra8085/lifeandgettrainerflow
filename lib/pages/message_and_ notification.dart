import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';
class Messageandnotificationpage extends StatefulWidget {
  const Messageandnotificationpage({Key? key}) : super(key: key);

  @override
  State<Messageandnotificationpage> createState() => _MessageandnotificationpageState();
}

class _MessageandnotificationpageState extends State<Messageandnotificationpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      appBar:  AppBar(
        backgroundColor: colors().splashscreenbacground,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.arrow_back,color: colors().white,),

            Text("Message & Monitoring clients ",style: TextStyle(color: colors().white,fontSize: 23),)
          ],),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.h.heightBox,

            Text("Message and monitoring clients",style: TextStyle(color: colors().splashscreenbacground,fontSize: 24),),
            3.h.heightBox,
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 5,
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
                  2.w.widthBox,
                  Expanded(
                    flex: 1,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 1.2.h,horizontal: 2.w),

                          decoration: BoxDecoration(
                              color: colors().white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [new BoxShadow(
                                  color: Color(0xff000000).withOpacity(0.2),
                                  blurRadius: 2.0,
                                  offset: Offset(0,1)
                              ),]

                          ),
                          child: Center(child: Icon(Icons.messenger_outline_rounded,color:Color(0xff000000) ,size: 35,))))
                ],
              ),
            ),
            Container(
              padding:EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              margin:EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h) ,
              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
                      child: Text("Ali Adam",style: TextStyle(color: Colors.black,fontSize: 23),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return
                                  Container(
                                    height: MediaQuery.of(context).size.height*.55,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          2.h.heightBox,
                                          Container(
                                            padding:EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
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

                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(" Mohsin Ali ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                                                        Text("  Age : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                        Text("26",style: TextStyle(color: Colors.black,fontSize: 14,),),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.location_on,color: Color(0xff414141),),
                                                        Text("Kuwait ",style: TextStyle(color: Colors.black,fontSize: 13,),),

                                                      ],
                                                    )
                                                  ],
                                                ),
                                                1.h.heightBox,
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [

                                                    Row(
                                                      children: [

                                                        Text("Weight : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                        Text("72 Kg",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                      ],
                                                    ),
                                                    Row(
                                                      children: [

                                                        Text("Height  : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                        Text("5.8 inch",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                      ],
                                                    ),
                                                    Row(
                                                      children: [

                                                        Text("Gender : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                        Text("Male",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                      ],
                                                    )
                                                  ],
                                                ),
                                                0.5.h.heightBox,
                                                Row(
                                                  children: [
                                                    Row(
                                                      children: [

                                                        Text("Weight goal : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                        Text("Increase",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                0.5.h.heightBox,
                                                Row(
                                                  children: [
                                                    Row(
                                                      children: [

                                                        Text("Health goal : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                        Text("Weight gain",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                0.5.h.heightBox,
                                                Row(
                                                  children: [
                                                    Row(
                                                      children: [

                                                        Text("Allergies / Food they do not eat : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                        Text("oily fast food",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                0.5.h.heightBox,
                                                Row(
                                                  children: [
                                                    Row(
                                                      children: [

                                                        Text("Available Days : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                        Text("Sun , Mon ,Tues , Wed , Thur , Fri , Sat .",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                0.5.h.heightBox,
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,

                                                        children: [

                                                          Text("Notes : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                          Expanded(child: Text("Lorem Ipsum is simply dummy text of he printing and typesetting industry.",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),)),

                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                1.h.heightBox,
                                              ],
                                            ),
                                          ),
                                          1.h.heightBox,
                                          Container(
                                            padding:EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
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
                                              crossAxisAlignment:CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(child: Text("Injuries / Illnesses",style: TextStyle(color: Colors.black,fontSize: 13),)),

                                                  ],
                                                ),
                                                SizedBox(
                                                  height:12.h,

                                                  child: ListView.builder(
                                                      shrinkWrap: true,
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: 20,
                                                      itemBuilder: (context,index){
                                                        return
                                                          Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Container(
                                                                width: 20.w,


                                                                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/5/57/Shri_Virat_Kohli_for_Cricket%2C_in_a_glittering_ceremony%2C_at_Rashtrapati_Bhavan%2C_in_New_Delhi_on_September_25%2C_2018_%28cropped%29.JPG",fit: BoxFit.cover,)),
                                                          );

                                                      }),
                                                )


                                              ],
                                            ),
                                          ),
                                          1.h.heightBox,
                                          Container(
                                            padding:EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
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
                                              crossAxisAlignment:CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(child: Text("Available Equipments",style: TextStyle(color: Colors.black,fontSize: 13),)),

                                                  ],
                                                ),
                                                SizedBox(
                                                  height:12.h,

                                                  child: ListView.builder(
                                                      shrinkWrap: true,
                                                      scrollDirection: Axis.horizontal,
                                                      itemCount: 20,
                                                      itemBuilder: (context,index){
                                                        return
                                                          Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Container(
                                                                width: 20.w,


                                                                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/5/57/Shri_Virat_Kohli_for_Cricket%2C_in_a_glittering_ceremony%2C_at_Rashtrapati_Bhavan%2C_in_New_Delhi_on_September_25%2C_2018_%28cropped%29.JPG",fit: BoxFit.cover,)),
                                                          );

                                                      }),
                                                )


                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("Name of the program that is purchased !",style: TextStyle(fontSize: 19,color: Color(0xff707070)),)
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(vertical: 1.5.h),
                                            margin: EdgeInsets.symmetric(vertical: 1.5.h,horizontal: 3.w),
                                            decoration: BoxDecoration(
                                              color: colors().splashscreenbacground,
                                              borderRadius: BorderRadius.circular(10),

                                            ),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Icon(Icons.add,color: colors().white,size: 30,),
                                                  2.w.widthBox,
                                                  Text("Add Program",style: TextStyle(color: colors().white,fontSize: 23),),
                                                ],
                                              ),
                                            )                   ,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                              },
                            );
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage('https://i.pinimg.com/originals/a3/fb/5d/a3fb5def518705c9cc739299234c2779.jpg'),

                                  fit: BoxFit.fill
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            showModalBottomSheet(
                              isScrollControlled: true,

                              context: context,
                              builder: (context) {
                                return
                                  Padding(
                                      padding: MediaQuery.of(context).viewInsets,
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*.56,
                                      child: Column(

                                       children: [


                                         Container(
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
                                       ],
                                      ),
                                    ),
                                  );
                              },
                            );
                          },
                          child: Column(
                            children: [
                              Icon(Icons.message,color: Color(0xff6A6A6A),size: 40,),
                              Text("Messages ",style: TextStyle(color: Color(0xff241D1D),fontSize: 14),)
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset("assets/images/performs.png",scale: 4,),
                            ),

                            Text("Performance ",style: TextStyle(color: Color(0xff241D1D),fontSize: 14),)
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset("assets/images/notes.png",scale: 4,),
                            ),


                            Text("Notes ",style: TextStyle(color: Color(0xff241D1D),fontSize: 14),)
                          ],
                        ),

                      ],
                    )

                  ],
                ),
              ),
            ),
            Container(
              padding:EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h),
              margin:EdgeInsets.symmetric(horizontal: 2.w,vertical: 1.h) ,
              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
                      child: Text("Habeeb Makanjuola",style: TextStyle(color: Colors.black,fontSize: 23),),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return
                                 Container(
                                  height: MediaQuery.of(context).size.height*.50,
                                   child: SingleChildScrollView(
                                     child: Column(
                                       children: [
                                         2.h.heightBox,
                                         Container(
                                           padding:EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
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

                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Row(
                                                   children: [
                                                     Text(" Mohsin Ali ",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                                                     Text("  Age : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                     Text("26",style: TextStyle(color: Colors.black,fontSize: 14,),),
                                                   ],
                                                 ),
                                                 Row(
                                                   children: [
                                                 Icon(Icons.location_on,color: Color(0xff414141),),
                                                     Text("Kuwait ",style: TextStyle(color: Colors.black,fontSize: 13,),),

                                                   ],
                                                 )
                                               ],
                                             ),
                                               1.h.heightBox,
                                               Row(
                                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: [

                                                   Row(
                                                     children: [

                                                       Text("Weight : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                       Text("72 Kg",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                     ],
                                                   ),
                                                   Row(
                                                     children: [

                                                       Text("Height  : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                       Text("5.8 inch",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                     ],
                                                   ),
                                                   Row(
                                                     children: [

                                                       Text("Gender : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                       Text("Male",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                     ],
                                                   )
                                                 ],
                                               ),
                                               0.5.h.heightBox,
                                               Row(
                                                 children: [
                                                   Row(
                                                     children: [

                                                       Text("Weight goal : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                       Text("Increase",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                     ],
                                                   ),
                                                 ],
                                               ),
                                                0.5.h.heightBox,
                                               Row(
                                                 children: [
                                                   Row(
                                                     children: [

                                                       Text("Health goal : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                       Text("Weight gain",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                     ],
                                                   ),
                                                 ],
                                               ),
                                              0.5.h.heightBox,
                                               Row(
                                                 children: [
                                                   Row(
                                                     children: [

                                                       Text("Allergies / Food they do not eat : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                       Text("oily fast food",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                     ],
                                                   ),
                                                 ],
                                               ),
                                               0.5.h.heightBox,
                                               Row(
                                                 children: [
                                                   Row(
                                                     children: [

                                                       Text("Available Days : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                       Text("Sun , Mon ,Tues , Wed , Thur , Fri , Sat .",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),),

                                                     ],
                                                   ),
                                                 ],
                                               ),
                                               0.5.h.heightBox,
                                               Row(
                                                 children: [
                                                   Expanded(
                                                     child: Row(
                                                       crossAxisAlignment: CrossAxisAlignment.start,

                                                       children: [

                                                         Text("Notes : ",style: TextStyle(color: Colors.black,fontSize: 13,),),
                                                         Expanded(child: Text("Lorem Ipsum is simply dummy text of he printing and typesetting industry.",style: TextStyle(color: Color(0xff6D6767),fontSize: 14,),)),

                                                       ],
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                               1.h.heightBox,
                                             ],
                                           ),
                                         ),
                                         1.h.heightBox,
                                         Container(
                                           padding:EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
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
                                             crossAxisAlignment:CrossAxisAlignment.start,
                                             children: [
                                               Row(
                                                 children: [
                                                   Expanded(child: Text("Injuries / Illnesses",style: TextStyle(color: Colors.black,fontSize: 13),)),

                                                 ],
                                               ),
                                               SizedBox(
                                                 height:12.h,

                                                 child: ListView.builder(
                                                   shrinkWrap: true,
                                                     scrollDirection: Axis.horizontal,
                                                     itemCount: 20,
                                                     itemBuilder: (context,index){
                                                       return
                                                         Padding(
                                                           padding: const EdgeInsets.all(8.0),
                                                           child: Container(
                                                               width: 20.w,


                                                               child: Image.network("https://upload.wikimedia.org/wikipedia/commons/5/57/Shri_Virat_Kohli_for_Cricket%2C_in_a_glittering_ceremony%2C_at_Rashtrapati_Bhavan%2C_in_New_Delhi_on_September_25%2C_2018_%28cropped%29.JPG",fit: BoxFit.cover,)),
                                                         );

                                                 }),
                                               )


                                             ],
                                           ),
                                         ),
                                         1.h.heightBox,
                                         Container(
                                           padding:EdgeInsets.symmetric(horizontal: 6.w,vertical: 2.h),
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
                                             crossAxisAlignment:CrossAxisAlignment.start,
                                             children: [
                                               Row(
                                                 children: [
                                                   Expanded(child: Text("Available Equipments",style: TextStyle(color: Colors.black,fontSize: 13),)),

                                                 ],
                                               ),
                                               SizedBox(
                                                 height:12.h,

                                                 child: ListView.builder(
                                                     shrinkWrap: true,
                                                     scrollDirection: Axis.horizontal,
                                                     itemCount: 20,
                                                     itemBuilder: (context,index){
                                                       return
                                                         Padding(
                                                           padding: const EdgeInsets.all(8.0),
                                                           child: Container(
                                                               width: 20.w,


                                                               child: Image.network("https://upload.wikimedia.org/wikipedia/commons/5/57/Shri_Virat_Kohli_for_Cricket%2C_in_a_glittering_ceremony%2C_at_Rashtrapati_Bhavan%2C_in_New_Delhi_on_September_25%2C_2018_%28cropped%29.JPG",fit: BoxFit.cover,)),
                                                         );

                                                     }),
                                               )


                                             ],
                                           ),
                                         ),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Text("Name of the program that is purchased !",style: TextStyle(fontSize: 19,color: Color(0xff707070)),)
                                           ],
                                         ),
                                         Container(
                                           padding: EdgeInsets.symmetric(vertical: 1.5.h),
                                           margin: EdgeInsets.symmetric(vertical: 1.5.h,horizontal: 3.w),
                                           decoration: BoxDecoration(
                                             color: colors().splashscreenbacground,
                                             borderRadius: BorderRadius.circular(10),

                                           ),
                                           child: Center(
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Icon(Icons.add,color: colors().white,size: 30,),
                                                 2.w.widthBox,
                                                 Text("Add Program",style: TextStyle(color: colors().white,fontSize: 23),),
                                               ],
                                             ),
                                           )                   ,
                                         ),
                                       ],
                                     ),
                                   ),
                                 );
                              },
                            );
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage('https://i.pinimg.com/originals/a3/fb/5d/a3fb5def518705c9cc739299234c2779.jpg'),

                                  fit: BoxFit.fill
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Icon(Icons.message,color: Color(0xff6A6A6A),size: 40,),
                            Text("Messages ",style: TextStyle(color: Color(0xff241D1D),fontSize: 14),)
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset("assets/images/performs.png",scale: 4,),
                            ),

                            Text("Performance ",style: TextStyle(color: Color(0xff241D1D),fontSize: 14),)
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset("assets/images/notes.png",scale: 4,),
                            ),


                            Text("Notes ",style: TextStyle(color: Color(0xff241D1D),fontSize: 14),)
                          ],
                        ),

                      ],
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    )
    );
  }
}
