// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:purehours/screens/src/pages/index.dart';

class Meeting extends StatelessWidget {
  const Meeting({Key? key}) : super(key: key);


// ignore: use_key_in_widget_constructors

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        title: 'Meeting',
            home: IndexPage()
            
            
            // Container(
            //   child: ElevatedButton(
            //     onPressed: (){
            //       // Navigator.of(context).pushNamed('/timerScreen'),
            //       Get.to(()=>IndexPage());
            //     }, child: Text('Video call'),
            //   ),
            // ),
      );
  }
}