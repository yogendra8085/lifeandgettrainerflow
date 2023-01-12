import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lifeandget_trainer/pages/Loginpage.dart';
import 'package:lifeandget_trainer/pages/Ratingandreview.dart';
import 'package:lifeandget_trainer/pages/contactus.dart';
import 'package:lifeandget_trainer/pages/creat_traiing6.dart';
import 'package:lifeandget_trainer/pages/create_training.dart';
import 'package:lifeandget_trainer/pages/create_training1.dart';
import 'package:lifeandget_trainer/pages/create_training4.dart';
import 'package:lifeandget_trainer/pages/create_training5.dart';
import 'package:lifeandget_trainer/pages/create_training7.dart';
import 'package:lifeandget_trainer/pages/create_training8.dart';
import 'package:lifeandget_trainer/pages/create_training9.dart';
import 'package:lifeandget_trainer/pages/current_meal.dart';
import 'package:lifeandget_trainer/pages/diet_delivery.dart';
import 'package:lifeandget_trainer/pages/exercise_set_library.dart';
import 'package:lifeandget_trainer/pages/exercises%20_library%20.dart';
import 'package:lifeandget_trainer/pages/faqpage.dart';
import 'package:lifeandget_trainer/pages/feedbackpage.dart';
import 'package:lifeandget_trainer/pages/grocery_list.dart';
import 'package:lifeandget_trainer/pages/invite_friends.dart';
import 'package:lifeandget_trainer/pages/meals_library.dart';
import 'package:lifeandget_trainer/pages/meals_set_library.dart';
import 'package:lifeandget_trainer/pages/meals_set_library1.dart';
import 'package:lifeandget_trainer/pages/message_and_%20notification.dart';
import 'package:lifeandget_trainer/pages/myprofilepage.dart';
import 'package:lifeandget_trainer/pages/notification_page.dart';
import 'package:lifeandget_trainer/pages/other_messages.dart';
import 'package:lifeandget_trainer/pages/preview_page.dart';
import 'package:lifeandget_trainer/pages/ragisterpage.dart';
import 'package:lifeandget_trainer/pages/save_page.dart';
import 'package:lifeandget_trainer/pages/splashscreen.dart';

import 'package:lifeandget_trainer/pages/subscription_and_payment1.dart';
import 'package:lifeandget_trainer/pages/subscription_and_payment2.dart';
import 'package:lifeandget_trainer/pages/total_balance.dart';
import 'package:lifeandget_trainer/pages/total_blance1.dart';
import 'package:lifeandget_trainer/pages/trainer_profile_page.dart';
import 'package:lifeandget_trainer/pages/triaining_program.dart';
import 'package:lifeandget_trainer/pages/tutorials.dart';
import 'package:lifeandget_trainer/pages/tutorials_and_contact_us.dart';
import 'package:lifeandget_trainer/pages/video.dart';
import 'package:sizer/sizer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return

            GetMaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                // This is the theme of your application.
                //
                // Try running your application with "flutter run". You'll see the
                // application has a blue toolbar. Then, without quitting the app, try
                // changing+ the primarySwatch below to Colors.green and then invoke
                // "hot reload" (press "r" in the console where you ran "flutter run",
                // or simply save your changes to "hot reload" in a Flutter IDE).
                // Notice that the counter didn't reset back to zero; the application
                // is not restarted.
                primarySwatch: Colors.blue,
              ),
              home:createtrainingpage9(),

            );

        }
    );
  }
}


