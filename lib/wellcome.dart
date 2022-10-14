import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orange/loginScreen.dart';

import 'homescreen.dart';

class WellcomeScreen extends StatelessWidget {
  const WellcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return SafeArea(
      child: Scaffold(
        body: wellcome(),
      ),
    );
  }
}

var maincolor = Colors.orange;
var maincolour = [Color.fromARGB(255, 236, 160, 124), Colors.orange];

//wellcome
class wellcome extends StatefulWidget {
  wellcome({Key? key}) : super(key: key);

  @override
  _wellcomeState createState() => _wellcomeState();
}

class _wellcomeState extends State<wellcome> {
  var img =
      'https://img.freepik.com/free-vector/coach-speaking-before-audience-mentor-presenting-charts-reports-employees-meeting-business-training-seminar-conference-vector-illustration-presentation-lecture-education_74855-8294.jpg';

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(img), fit: BoxFit.fill)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Text(
            'Best podcasts for your comfert',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 10,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 80,
          ),
          Text(
            'Lat yorself be coim every one',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 17.5,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: Container(
              height: h / 14,
              width: w / 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: maincolour),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  "Let's Go",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: h / 55),
                ),
              ),
            ),
            // style: ButtonStyle(
            //     backgroundColor: MaterialStateProperty.all(
            //       Colors.grey[700],
            //     ),
            //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(35))),
            //     minimumSize: MaterialStateProperty.all(Size(
            //         MediaQuery.of(context).size.width / 2.0,
            //         MediaQuery.of(context).size.height / 12.0))),
            // child: Text(
            //   'Get started',
            //   style: TextStyle(
            //     color: Colors.white,
            //     fontSize: MediaQuery.of(context).size.width / 25,
            //   ),
            // ),
            // onPressed: () {
            //   builder:
            //   (context) => const LogInScreen();
            // },
          ),
        ],
      ),
    );
  }
}
