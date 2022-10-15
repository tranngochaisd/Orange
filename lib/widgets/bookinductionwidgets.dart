import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class BookInduction extends StatelessWidget {
  const BookInduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width / 1.15,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            "data:image/jpeg;base64,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"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Upcoming",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                      const Text(
                        "Book Fair",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          const Spacer(),
                          Container(
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("BOOK"),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
