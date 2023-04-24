import 'package:flutter/material.dart';
import 'package:leejungsoo/provider/firebase_provider.dart';
import 'package:provider/provider.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final firebaseProvider = Provider.of<FirebaseProvider>(context);
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 232, 162),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Row(
              children: [
                const CircleAvatar(),
                TextButton(
                    onPressed: () => firebaseProvider.saveUser(),
                    child: const Text("ADD USER TEST")),
                const Text("Some description")
              ],
            ),
          ),
          Container(
            height: 100,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 255, 232, 162)),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.blue,
                    child: const Text("First"),
                  ),
                  Container(
                    color: Colors.blue,
                    child: const Text("Second"),
                  ),
                  Container(
                    color: Colors.blue,
                    child: const Text("Third"),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              decoration: const BoxDecoration(color: Colors.amber),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 114, 86, 0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
              ),
            ),
          )
        ],
      ),
    )

        // Row(children: [
        //   TextButton(
        //     onPressed: () {
        //       FirebaseFirestore.instance
        //           .collection('users')
        //           .doc("users")
        //           .set({"name": "jiji"});
        //     },
        //     child: const Text("DDDD"),
        //   )
        // ]),
        );
  }
}
