// ignore_for_file: unnecessary_new, avoid_print

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => new _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyleManyParams = const TextStyle(
      color: Colors.pink,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
    );
    const fontSize26 = TextStyle(fontSize: 26.0);

    const double fontSizeNumberOfClicks = 18.0;

    return new Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: new AppBar(
          title: const Text(
            'Clicks counter',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 3.0,
          backgroundColor: Colors.black),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(
              '# of clicks:',
              style: textStyleManyParams.merge(fontSize26),
            ),
            new Text(
              '$clickCounter',
              style: const TextStyle(
                fontSize: fontSizeNumberOfClicks,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton.small(
        elevation: 3.0,
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.add_task,
          color: Colors.black,
        ),
        onPressed: () {
          /**
            * the command to increase clickCounter next line could also be 
            * placed inside of the setState() callback function
            */
          clickCounter++;
          setState(() {}); // setState receives an anonymous function
          print("Button pressed!, counter: ${this.clickCounter}");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new BottomAppBar(
        notchMargin: 15.0,
        elevation: 3.0,
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        child: Container(height: 60.0),
      ),
    );
  }
}
