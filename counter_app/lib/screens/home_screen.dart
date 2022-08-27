// ignore_for_file: unnecessary_new, avoid_print

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // this widget may be imported as the home property of MaterialApp
  const HomeScreen({Key? key}) : super(key: key);

  // BuildContext := widget tree.
  @override
  Widget build(BuildContext context) {
    // the return of build() has to be a widget

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
          elevation: 3.0, // the z-ccordinates
          backgroundColor: Colors.black),
      // Scaffold needs to have the body property indicated with a widget
      body: new Center(
        // Center centers on the x-axis
        child: Column(
          // mainAxisAlignment := y-coordinate for Column widget, x otherwise
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment := x-coordinate for Column widget, y otherwise
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            /** 
               * merge() joins two instances of the same class; in this case,
               * fontSize30 with textStyleLarger, wich are both of 
               * the class TextStyle
              */
            new Text(
              '# of clicks:',
              style: textStyleManyParams.merge(fontSize26),
            ),
            const Text(
              'A StatelessWidget is not necessarily the best choice here',
              style: TextStyle(
                fontSize: fontSizeNumberOfClicks,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ), // the <> is optional
      ),
      floatingActionButton: new FloatingActionButton.small(
        // invoking a named constructor of FloatingActionButton widget class
        elevation: 3.0,
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.add_task,
          color: Colors.black,
        ),
        onPressed: () {
          print("Button pressed!, counter: "
              "A StatelessWidget is not necessarily the best choice here");
        }, // onPressed is configured with an anonymous function
      ),
      /**
       * floatingActionButtonLocation locates a floatingActionButton:
       * https://medium.com/litslink/flutter-combinations-of-bottomappbar-with-floatingactionbutton-dda6b560ff73
       */
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new BottomAppBar(
        notchMargin: 15.0, // rounds the notch joining the floatingActionButton
        elevation: 3.0,
        color: Colors.black,
        shape: const CircularNotchedRectangle(),
        child: Container(height: 60.0),
      ),
    );
  }
}

/**
 * This way, the app is not functional. It has to be rendered as a 
 * StatefulWidget instead of a StatelessWidget
 */