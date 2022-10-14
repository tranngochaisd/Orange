import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width / 1.25,
              child: Card(
                elevation: 3,
                shadowColor: Colors.grey[100],
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'search',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search)),
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 30,
            ),
            Icon(Icons.lock_outline_rounded)
          ],
        ),
      ],
    );
  }
}
