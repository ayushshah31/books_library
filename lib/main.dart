import 'package:flutter/material.dart';
import 'library.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/': (context) => Library(),
    },
  ));
}


