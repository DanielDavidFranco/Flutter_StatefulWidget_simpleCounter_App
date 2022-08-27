// Vanilla-Flutter or material/cupertino imports //
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// 3rd party imports

// User-created imports //
import 'package:counter_app/screens/counter_screen.dart';
//import 'package:counter_app/screens/home_screen.dart';

void main() {
  /**
   * cupertino and material are widget packages.
   * cupertino ---> better for iOS
   * material ---> better for Android
  */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  /** Is a widget; for it to be a widget, it must extend fromStatelessWidget or 
   * from StatefulWidget.
  */

  // super() calls the constructor of the parent class StatelessWidget
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // the buid() method expects a widget. It builds a widget
    return const MaterialApp(
        /** 
         * MaterialApp widget is the entrypoint to the app.
         * home is a property to invoke a widget; 
        */
        debugShowCheckedModeBanner: false, // to hide the debug sign
        // imports CounterScreen from /screens/counter_screen.dart
        home: CounterScreen());
  }
}
