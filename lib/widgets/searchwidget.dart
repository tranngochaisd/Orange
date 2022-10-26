// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import '../homeScreen.dart';
// import 'DrawebHomePagewidget.dart';

// class searchWidget extends StatelessWidget {
//   const searchWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//     return Column(
//       children: [
//         Row(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height / 15,
//               width: MediaQuery.of(context).size.width / 1.25,
//               child: Card(
//                 elevation: 3,
//                 shadowColor: Colors.grey[100],
//                 child: const TextField(
//                   decoration: InputDecoration(
//                       labelText: 'search',
//                       border: OutlineInputBorder(),
//                       prefixIcon: Icon(Icons.search)),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: MediaQuery.of(context).size.width / 30,
//             ),
//             InkWell(
//               onTap: () {
//                 // Navigator.push(context,
//                 //     MaterialPageRoute(builder: (context) => DWidget()));

//                              Scaffold.of(context).openDrawer();

//                 Scaffold(
//                   drawer: Drawer(
//                     backgroundColor: Colors.orange,
//                     child: ListView(
//                       padding: EdgeInsets.zero,
//                       children: <Widget>[
//                         DrawerHeader(
//                           child: Text('List Iteml'),
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                           ),
//                         ),
//                         ListTile(
//                           title: Text('Item 1'),
//                           onTap: () {
//                             // Update the state of the app
//                           },
//                         ),
//                         ListTile(
//                           title: Text('Item 2'),
//                           onTap: () {
//                             // Update the state of the app
//                           },
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//               child: Container(
//                 height: h / 16,
//                 width: w / 12,
//                 child: Icon(Icons.lock_outline_rounded),
//               ),

//             ),
//             // Icon(Icons.lock_outline_rounded)
//             // Container(
//             //     height: h / 16,
//             //     width: w / 12,
//             //     child:

//             // AppBar(
//             //     title: null,
//             //     backgroundColor: Colors.white,
//             //     leading: IconButton(
//             //         //  height: h / 16,
//             //         //     width: w / 12,
//             //         icon: Icon(
//             //           Icons.lock_outline_rounded,
//             //           color: Colors.black,
//             //         ),
//             //         onPressed: () {
//             // Scaffold.of(context).openDrawer();

//             //drawer:
//             // Drawer(
//             //     child: Column(
//             //   children: [
//             //     DrawerHeader(
//             //       child: new Text("DRAWER HEADER.."),
//             //       decoration:
//             //           new BoxDecoration(color: Colors.orange),
//             //     ),
//             //     Text("Drawer Is Here => 1"),
//             //     Text("Drawer Is Here => 2"),
//             //     Text("Drawer Is Here => 3"),
//             //   ],
//             // ));
//             //})

//             //),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class SearchScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Navigation Drawer Flutter111',
//       // theme: ThemeData(
//       //   primarySwatch: Colors.white,
//       // ),
//       home: searchWidget(
//         title: 'Wellcom my app',
//       ),
//     );
//   }
// }

class searchWidget extends StatelessWidget {
  final String title = 'Wellcom';

  //ignore: prefer_const_constructors_in_immutables
  //searchWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: CustommSearch());
            },
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 20,
          ),
        ],
      ),
      //  body:
      //   Center(child: Text('Navigation Drawer Flutter!!!!!')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Team Viet Dev'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustommSearch extends SearchDelegate {
  @override
  List<String> allData = [
    'Ameriacn',
    'Russia',
    'China',
    'VietNam',
    'Japan',
    'Korea',
    'Fap',
    'Itali',
    'Iran',
    'Laos',
    'Campodia',
    'ThaiLand',
    'Greek',
    'EngLand',
    'Astralia'
  ];
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // Gợi ý những data cho mình
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Gợi ý những data cho mình
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
