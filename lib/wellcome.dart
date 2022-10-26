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

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
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
      'https://images.pexels.com/photos/301920/pexels-photo-301920.jpeg?cs=srgb&dl=pexels-pixabay-301920.jpg&fm=jpg';
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
            // child: Image(
            //   image: AssetImage(
            //     'assets/1.png',
            //     package: 'orange',
            //   ),
            // ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Text(
            'Stugether',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 10,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 80,
          ),
          Text(
            'Học cùng nhau không bao giờ chán',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 17.5,
            ),
          ),
          // SizedBox(
          //   height: MediaQuery.of(context).size.height / 20,
          // ),
          // const Expanded(child: Text("")),
          // InkWell(
          //   onTap: () {
          //     // Navigator.push(
          //     //     context,
          //     //     MaterialPageRoute(
          //     //         builder: (context) => const ()));
          //   },
          //   child: Container(
          //     height: h / 14,
          //     width: w,
          //     decoration: BoxDecoration(
          //       gradient: LinearGradient(colors: maincolour),
          //       borderRadius: BorderRadius.circular(12),
          //     ),
          //     child: Center(
          //       child: Text(
          //         "Login",
          //         style: TextStyle(
          //             fontWeight: FontWeight.w600,
          //             color: Colors.white,
          //             fontSize: h / 55),
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            // onTap: () {
            //
            // },
            child: Text(
              'Get started',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 25,
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.orange,
                ),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35))),
                minimumSize: MaterialStateProperty.all(Size(
                    MediaQuery.of(context).size.width / 2.0,
                    MediaQuery.of(context).size.height / 12.0))),
          ),
        ],
      ),
    );
  }
}
