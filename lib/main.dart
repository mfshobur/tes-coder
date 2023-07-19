import 'package:belajar_flutter/cubit/todo_cubit.dart';
import 'package:belajar_flutter/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/todo_tile.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        home: MainPage(),
      ),
    );
  }
}

// List<TodoTIle> todolist = [];