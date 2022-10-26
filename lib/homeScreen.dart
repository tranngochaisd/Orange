// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:orange/widgets/bookinductionwidgets.dart';
import 'package:orange/widgets/infomativBoxWidgets.dart';
import 'package:orange/widgets/listItemwidgets.dart';
import 'package:orange/widgets/searchwidget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Ui2(),
  ));
}

class Ui2 extends StatefulWidget {
  Ui2({Key? key}) : super(key: key);

  @override
  _Ui2State createState() => _Ui2State();
}

class _Ui2State extends State<Ui2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  size: MediaQuery.of(context).size.height / 29,
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  size: MediaQuery.of(context).size.height / 29,
                ),
                text: 'Search',
              ),
              Tab(
                icon: Icon(
                  Icons.wallet_giftcard,
                  size: MediaQuery.of(context).size.height / 29,
                ),
                text: 'Facility',
              ),
              Tab(
                icon: Icon(
                  Icons.manage_accounts,
                  size: MediaQuery.of(context).size.height / 29,
                ),
                text: 'Me',
              ),
            ],
            unselectedLabelColor: Colors.grey.shade500,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
          ),
          appBar: AppBar(
            // leading: ,
            title: Text('Wellcom '),
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
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                SizedBox(
                  // width: MediaQuery.of(context).size.width / 30,
                  height: MediaQuery.of(context).size.height / 50,
                ),
                BookInduction(),
                SizedBox(
                  // height: MediaQuery.of(context).size.height / 50,
                  height: MediaQuery.of(context).size.height / 50,
                ),
                bookModule(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                InfomativBox(),
              ],
            ),
          )),
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

          // searchWidget();
        ));
  }
}
