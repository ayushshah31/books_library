import 'package:flutter/material.dart';
import 'library.dart';
import 'searchbar.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/': (context) => LibraryPage(),
      '/SearchBarOP': (context) => SearchBarOP(),
    },
    debugShowCheckedModeBanner: false,
  ));
}


