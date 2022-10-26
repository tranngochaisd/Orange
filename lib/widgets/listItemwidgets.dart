import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class bookModule extends StatelessWidget {
  const bookModule({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "    Categories",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 70,
              width: 70,
              child: const Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/4/4259.png')),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white54,
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 70,
              width: 70,
              child: Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/2916/2916315.png')),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white54,
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 70,
              width: 70,
              child: Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/73/73443.png')),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white54,
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 2.0,
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              height: 70,
              width: 70,
              child: Text("More", style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black87,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 2.0,
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Container(
        //       padding: EdgeInsets.all(8),
        //       height: 70,
        //       width: 70,
        //       child: Image(
        //         image: NetworkImage(
        //             'https://i0.wp.com/ubgrillsandsnacks.com/wp-content/uploads/2020/12/rainbow-trifle.png?fit=800%2C800&ssl=1'),
        //       ),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //         color: Colors.white54,
        //         boxShadow: [
        //           new BoxShadow(
        //             color: Colors.black12,
        //             blurRadius: 2.0,
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10),
        //       height: 70,
        //       width: 70,
        //       child: Image(
        //         image: NetworkImage(
        //             'https://pngfile.net/public/uploads/preview/birthday-cake-png-01-01-3156667166161t39nfsal.png'),
        //       ),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //         color: Colors.white54,
        //         boxShadow: [
        //           new BoxShadow(
        //             color: Colors.black12,
        //             blurRadius: 2.0,
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       padding: EdgeInsets.all(10),
        //       height: 70,
        //       width: 70,
        //       child: Image(
        //         image: NetworkImage(
        //             'https://i.pinimg.com/originals/f1/cd/6c/f1cd6ca703aa51398745ee2ea83cf6a9.png'),
        //       ),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //         color: Colors.white60,
        //         boxShadow: [
        //           new BoxShadow(
        //             color: Colors.black12,
        //             blurRadius: 2.0,
        //           ),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       alignment: Alignment.center,
        //       padding: EdgeInsets.all(10),
        //       height: 70,
        //       width: 70,
        //       child: Text("More", style: TextStyle(color: Colors.white)),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //         color: Colors.black87,
        //         boxShadow: [
        //           new BoxShadow(
        //             color: Colors.black12,
        //             blurRadius: 2.0,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}
