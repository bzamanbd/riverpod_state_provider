import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Provider',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepPurple),
      home: const HomeScreen(),
    ));
