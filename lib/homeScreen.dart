// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
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
          body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Column(
              children: [
                searchWidget(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
              ],
            ),
          )),
        ));
  }
}
