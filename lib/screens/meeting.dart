import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:purehours/screens/meeting_screen.dart';

class Meeting extends StatelessWidget {
  const Meeting({Key? key}) : super(key: key);


// ignore: use_key_in_widget_constructors

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        title: 'Join Meeting',
        home: Container(
          child: ElevatedButton(
            onPressed: (){
              // Navigator.of(context).pushNamed('/timerScreen'),
              Get.to(()=>MeetingScreen());
            }, child: Text('Join'),
          ),
        ),
      );
  }
}