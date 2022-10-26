import 'package:flutter/material.dart';

class InfomativBox extends StatefulWidget {
  InfomativBox({Key? key}) : super(key: key);

  @override
  _InfomativBoxState createState() => _InfomativBoxState();
}

class _InfomativBoxState extends State<InfomativBox> {
  @override
  Widget build(BuildContext context) {
    double wf = 10;
    double w = MediaQuery.of(context).size.width / 3.5;
    double h = MediaQuery.of(context).size.height / 4;

    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // scrollDirection: Axis.horizontal,

        children: [
          // SizedBox(
          //   width: 40,
          // ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
              height: h,
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 70,
                    child: Text(
                      "  LIVE",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: wf,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Juventus",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                          Text("0",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Real Madrid",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                          Text("1",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text("139 Markets ",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: wf,
                              )),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white54,
                            size: wf,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.amber,
                        ),
                        value: 0.3,
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
              height: h,
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 75,
                    child: Text(
                      "  20:30",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: wf,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.orange),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Mancheste",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                          Text("0",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Arsenal",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                          Text("1",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text("139 Markets ",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: wf,
                              )),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white54,
                            size: wf,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
              height: h,
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 70,
                    child: Text(
                      "  LIVE",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: wf,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Juventus",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                          Text("0",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Real Madrid",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                          Text("1",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: wf,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Text("139 Markets ",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: wf,
                              )),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white54,
                            size: wf,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      LinearProgressIndicator(
                        backgroundColor: Colors.white,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.amber,
                        ),
                        value: 0.3,
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                //Image.asset('assets/images/AnhBui.jpg')
              ),
            ),
          ),
        ],
      ),
    );
  }
}
