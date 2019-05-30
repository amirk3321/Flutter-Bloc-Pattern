import 'package:flutter/material.dart';
import '../src/ui/movie_list.dart';

class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bloc_Pattern",
      home: MovieList()
    );
  }
  
}