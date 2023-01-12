
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../contantstring/colors.dart';


class Ratingandreviewpage extends StatefulWidget {
  const Ratingandreviewpage({Key? key}) : super(key: key);

  @override
  State<Ratingandreviewpage> createState() => _RatingandreviewpageState();
}

class _RatingandreviewpageState extends State<Ratingandreviewpage> {
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
              child: Text("Rating & review",style: TextStyle(color: colors().white,fontSize: 23),),
            )
          ],),),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            3.h.heightBox,
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 3.w,vertical: 2.h),
                      decoration: BoxDecoration(
                          color: colors().white,
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: [new BoxShadow(
                              color: Color(0xff000000).withOpacity(0.2),
                              blurRadius: 2.0,
                              offset: Offset(0,1)
                          ),]

                      ),
                      child: Column(
                        children: [
                          Text("5.0",style: TextStyle(color: colors().black,fontSize: 28),),
                          RatingBarIndicator(
                            direction: Axis.horizontal,
                            rating: 5.0,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0.5.w),
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 20.0,

                          )
                        ],
                      ),
                    ),
                  ),
            3.h.heightBox,
            Text('Customer Reviews',style: TextStyle(color: colors().black,fontSize: 22),),
            4.h.heightBox,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Container(
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
               Expanded(
                 child: Padding(
                   padding:  EdgeInsets.symmetric(horizontal: 2.w),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       RatingBarIndicator(
                              direction: Axis.horizontal,
                              rating: 5.0,
                              itemPadding: EdgeInsets.symmetric(horizontal: 0.2.w),
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              itemCount: 5,
                              itemSize: 25.0,

                            ),
                       Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                           ,style: TextStyle(color: Color(0xff707070),fontSize: 15)),
                     ],
                   ),
                 ),
               ),

                ],
              ),
            ),
            1.h.heightBox,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('https://navbharattimes.indiatimes.com/photo/msid-90571509,imgsize-42022/pic.jpg'),

                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingBarIndicator(
                            direction: Axis.horizontal,
                            rating: 5.0,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0.2.w),
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 25.0,

                          ),
                          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                              ,style: TextStyle(color: Color(0xff707070),fontSize: 15)),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            1.h.heightBox,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
              decoration: BoxDecoration(
                  color: colors().white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [new BoxShadow(
                      color: Color(0xff000000).withOpacity(0.2),
                      blurRadius: 2.0,
                      offset: Offset(0,1)
                  ),]

              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage('https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg'),

                          fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 2.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RatingBarIndicator(
                            direction: Axis.horizontal,
                            rating: 5.0,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0.2.w),
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 25.0,

                          ),
                          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                              ,style: TextStyle(color: Color(0xff707070),fontSize: 15)),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    ));
  }
}
