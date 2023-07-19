import 'package:belajar_flutter/cubit/todo_cubit.dart';
import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_new_todo_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final todoCubit = context.read<TodoCubit>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 141, 96, 149),
        title: Text("To do list"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 141, 96, 149),
        onPressed:(){
          Navigator.push(
          context,
          MaterialPageRoute(builder:(context) => AddNewTodoPage(),));
        }, 
        child: Icon(Icons.add, size: 40,),
        ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: todoCubit.todolist,
          ),
        ),
      ) 
    );
  }
}

