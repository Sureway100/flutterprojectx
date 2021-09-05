//note just like you have packages for npm, dart have its own packages too

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//this is an entry point of every function
//then run a core or root widget called  MyApp class
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //override the stateless build method
  @override
  Widget build(BuildContext context) {
    final WordPaired = WordPair.random();
    //we dont want to use Text widgets but scaffold
    // The Scaffold is a widget in Flutter used to implements the basic material design visual layout structure.
    // It provides many widgets or APIs for showing Drawer, SnackBar, BottomNavigationBar, AppBar,
    // FloatingActionButton, and many more.

    //everything is a widget
    //from materialapp => scaffold => appbar
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: Scaffold(
          appBar: AppBar(title: Text('Select Your Random Words')),
          //scafold takes in body while material app takes in home

          //center widget means every child widget will get centered
          //always check what () are closing which widget
          body: Center(child: Text(WordPaired.asPascalCase)),
        ));
  }
}

//00:31:00
