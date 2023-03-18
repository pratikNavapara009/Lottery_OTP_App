import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Lottery_App(),
    ),
  );
}

class Lottery_App extends StatefulWidget {
  const Lottery_App({Key? key}) : super(key: key);

  @override
  State<Lottery_App> createState() => _Lottery_AppState();
}

class _Lottery_AppState extends State<Lottery_App> {
  int color = -1;
  int index = 0;

  var r = Random();
  var a = 0;
  var b = 0;
  var c = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lottery App",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                if (color == index) {
                  color = -1;
                } else {
                  color = index;
                }
              });
            },
            child: const Icon(
              Icons.spoke_outlined,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
        ],
        backgroundColor:
        index == color ? const Color(0xff82954B) : const Color(0xffAC7D88),
      ),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 290,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: index == color
                  ? const Color(0xffBABD42)
                  : const Color(0xffAC7D88),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: index == color
                          ? const Color(0xffEFD345)
                          : const Color(0xffDEB6AB),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "$a",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: index == color
                          ? const Color(0xffEFD345)
                          : const Color(0xffDEB6AB),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "$b",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: index == color
                          ? const Color(0xffEFD345)
                          : const Color(0xffDEB6AB),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "$c",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  a = r.nextInt(10);
                  b = r.nextInt(10);
                  c = r.nextInt(10);
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 100,
                width: 190,
                decoration: BoxDecoration(
                  color: index == color
                      ? const Color(0xffEFD345)
                      : const Color(0xffDEB6AB),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.brown, width: 5),
                ),
                child: const Text(
                  "Get Lottery",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
