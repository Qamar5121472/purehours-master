import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:purehours/auth/welcome.dart';
import 'package:purehours/auth/login.dart';
import 'package:purehours/auth/signup.dart';
import './user/addActivity.dart';
import 'package:purehours/screens/meeting.dart';
import 'package:purehours/screens/meeting_screen.dart';
import 'package:purehours/screens/youtube_screen.dart';
import 'package:purehours/user/AppUsageSetting.dart';
import 'package:purehours/user/addActivity.dart';
import 'package:purehours/user/addSubject.dart';
import 'package:purehours/user/addskills.dart';
import 'package:purehours/user/daySelection.dart';
import 'package:purehours/user/subjects.dart';
import 'package:purehours/user/timerScreen.dart' as tm;
import 'package:purehours/user/timetable.dart';
import 'package:purehours/user/homeScreen.dart';
import 'package:purehours/user/skills.dart';
import 'package:purehours/user/usageScreen.dart';
import './user/activityDetail.dart';

class RouteGenrator {
  static Route<dynamic> genrateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Welcome());
      case '/login':
        return MaterialPageRoute(builder: (_) => const Login());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignUp());
      case '/homescreen':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/appUsageSetting':
        return MaterialPageRoute(builder: (_) => const AppUsageSetting());
      case '/details':
        return MaterialPageRoute(builder: (_) => const ActivityDetail());
      case '/PureHours Timetable':
        return MaterialPageRoute(builder: (_) => const DaySelection());
      case '/Subjects':
        return MaterialPageRoute(builder: (_) => const Subject());
      case '/Faculty':
        return MaterialPageRoute(builder: (_) => const TimetableScreen());
      case '/Resources':
        return MaterialPageRoute(builder: (_) => const TimetableScreen());
      case '/Entertainment':
        return MaterialPageRoute(
            builder: (_) => const YoutubePlayerDemo(title: 'Youtube'));
      case '/Zoom Meetings':
        return MaterialPageRoute(builder: (_) => MeetingScreen());
      case '/Your Skills':
        return MaterialPageRoute(builder: (_) => const Skills());
      case '/Usage':
        return MaterialPageRoute(builder: (_) => const AppUsageScreen());
      case '/Skills':
        return MaterialPageRoute(builder: (_) => const AddSkills());
      case '/Subjectadd':
        return MaterialPageRoute(builder: (_) => const AddSubject());
      case '/timerScreen':
        return MaterialPageRoute(builder: (_) => const tm.timerScreen());
      case '/Activity':
        return MaterialPageRoute(builder: (_) => const AddActivity());
      default:
        return _routeNotExist();
    }
  }

  static Route<dynamic> _routeNotExist() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("404 Not Found"),
        ),
        body: Column(
          children: [
            Center(
              child: Column(
                children: const [
                  Center(
                    child: Text(
                        "Ops looks like the page you are looking for doesnt exist"),
                  ),
                  // ElevatedButton(
                  //     onPressed: () {}, child: const Text("Guide Me!")),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
