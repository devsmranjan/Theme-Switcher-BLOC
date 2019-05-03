import 'package:flutter/material.dart';
import 'ui/action_buttons.dart';
import 'blocs/theme_bloc.dart';

class App extends StatelessWidget {
  final appName = "Theme Switcher";
  @override
  Widget build(BuildContext context) {
    ThemeBloc themeBloc = ThemeBloc();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // home: Scaffold(
      //   backgroundColor: Colors.white,
      //   body: ActionButtons(),
      // ),
      home: StreamBuilder(
        stream: themeBloc.streamColor,
        initialData: Colors.white,
        builder: (context, snapshot) {
          return Scaffold(
            backgroundColor: snapshot.data,
            body: ActionButtons(themeBloc: themeBloc, color: snapshot.data),
          );
        },
      ),


    );
  }
}