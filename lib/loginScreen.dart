import "package:flutter/material.dart";

import 'homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

var maincolor = Colors.orange;
var maincolour = [Color.fromARGB(255, 236, 160, 124), Colors.orange];

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: h,
          width: w,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                "https://images.pexels.com/photos/301920/pexels-photo-301920.jpeg?cs=srgb&dl=pexels-pixabay-301920.jpg&fm=jpg"),
            alignment: Alignment.topCenter,
          )),
          child: Column(
            children: [
              SizedBox(
                height: h / 2,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 10, right: 15, left: 15, bottom: 10),
                  width: w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: h / 50,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: const TextField(
                          decoration: InputDecoration(
                              labelText: 'Username',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.person)),
                        ),
                      ),
                      // SizedBox(
                      //   height: h / 50,
                      // ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: const TextField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.password)),
                        ),
                      ),
                      // const Divider(
                      //   thickness: 1,
                      // ),
                      SizedBox(
                        height: h / 50,
                      ),
                      Row(
                        children: [
                          Container(
                            height: h / 45,
                            width: w / 23,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: maincolor, width: w / 200),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Text(
                            " Remember me",
                            style: TextStyle(
                                color: const Color(0xFF9e9b9b),
                                fontSize: h / 60),
                          ),
                          const Expanded(child: Text("")),
                          Text(
                            "Forget Password?",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: maincolor,
                                fontSize: h / 60),
                          ),
                        ],
                      ),
                      const Expanded(child: Text("")),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Ui2()));
                        },
                        child: Container(
                          height: h / 14,
                          width: w,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: maincolour),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: h / 55),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
