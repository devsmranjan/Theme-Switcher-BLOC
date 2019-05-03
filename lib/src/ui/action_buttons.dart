import 'package:flutter/material.dart';
import '../blocs/theme_bloc.dart';

class ActionButtons extends StatelessWidget {
  final themeBloc;
  final color;
  const ActionButtons({Key key, this.themeBloc, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlineButton(
            child: Text("Switch Theme", style: TextStyle(color: color != Colors.white? Colors.white: Colors.black),),
            onPressed: () {
              if(color == Colors.white) {
                themeBloc.sinkColor.add(Colors.black);
              } else {
                themeBloc.sinkColor.add(Colors.white);
              }
              // print(themeBloc.sinkColor[0]);
            },
          )
        ],
      ),
    );
  }
}