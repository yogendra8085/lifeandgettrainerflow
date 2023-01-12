import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lifeandget_trainer/contantstring/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
class ragisterpage extends StatefulWidget {
  const ragisterpage({Key? key}) : super(key: key);

  @override
  State<ragisterpage> createState() => _ragisterpageState();
}

class _ragisterpageState extends State<ragisterpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: colors().splashscreenbacground,
        leading: Icon(Icons.arrow_back,color: colors().white,),
        title: Center(child: Image.asset("assets/images/logo-01.png",scale: 7,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            3.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("REGISTER"),
              ],
            ),
            7.h.heightBox,
            Container(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: TextField (
                  decoration: InputDecoration(
                      enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xffDDDDDD)),),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xff352641)),

                      ),

                      //labelText: 'Enter Name',
                      hintText: 'Full Name'
                  ),
                ),
              ) ,
            ),
            3.h.heightBox,
            Container(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: TextField (
                  decoration: InputDecoration(
                      enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xffDDDDDD)),),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xff352641)),

                      ),

                      //labelText: 'Enter Name',
                      hintText: 'Email ID'
                  ),
                ),
              ) ,
            ),
            3.h.heightBox,
            Container(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: TextField (
                  decoration: InputDecoration(
                      enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xffDDDDDD)),),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xff352641)),

                      ),

                      //labelText: 'Enter Name',
                      hintText: 'Mobile'
                  ),
                ),
              ) ,
            ),
            3.h.heightBox,
            Container(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: TextField (
                  decoration: InputDecoration(
                      enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xffDDDDDD)),),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xff352641)),

                      ),

                      //labelText: 'Enter Name',
                      hintText: 'Passward'
                  ),
                ),
              ) ,
            ),
            3.h.heightBox,
            Container(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: TextField (
                  decoration: InputDecoration(
                      enabledBorder:UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xffDDDDDD)),),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Color(0xff352641)),

                      ),

                      //labelText: 'Enter Name',
                      hintText: 'Confirm Passward'
                  ),
                ),
              ) ,
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 3.h),
              child: Container(
                decoration: BoxDecoration(
                  color: colors().splashscreenbacground,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Center(child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 2.5.h),
                  child: Text("CREATE AN ACCOUNT"),
                ),),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
              child: RichText(
                // Controls visual overflow
                overflow: TextOverflow.clip,

                // Controls how the text should be aligned horizontally
                textAlign: TextAlign.end,

                // Control the text direction
                textDirection: TextDirection.rtl,

                // Whether the text should break at soft line breaks
                softWrap: true,

                // Maximum number of lines for the text to span
                maxLines: 2,

                // The number of font pixels for each logical pixel
                textScaleFactor: 1,
                text: TextSpan(
                  text: "By Registering you  Agree with our ",
                  //style: DefaultTextStyle.of(context).style,
                  style: TextStyle(color: Color(0xff4E4E4E)),

                  //style: TextStyle(),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Terms & Conditions and ',
                        style: TextStyle(color: Color(0xffFF0000),
                          decoration: TextDecoration.underline,
                        )
                    ),
                    TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Color(0xffFF0000),
                          decoration: TextDecoration.underline,

                        )
                    ),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: RichText(
                // Controls visual overflow
                overflow: TextOverflow.clip,

                // Controls how the text should be aligned horizontally
                textAlign: TextAlign.end,

                // Control the text direction
                textDirection: TextDirection.rtl,

                // Whether the text should break at soft line breaks
                softWrap: true,

                // Maximum number of lines for the text to span
                maxLines: 1,

                // The number of font pixels for each logical pixel
                textScaleFactor: 1,
                text: TextSpan(
                  text: "Already have an account?",
                  //style: DefaultTextStyle.of(context).style,
                  style: TextStyle(color: Color(0xff4E4E4E)),

                  //style: TextStyle(),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' Signup',
                        style: TextStyle(color: Color(0xffFF0000))
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
