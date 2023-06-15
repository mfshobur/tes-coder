import 'package:belajar_flutter/pages/main_page.dart';
import 'package:flutter/material.dart';

import 'widgets/todo_tile.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

List<TodoTIle> todolist = [];