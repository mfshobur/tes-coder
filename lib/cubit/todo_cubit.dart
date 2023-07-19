import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../widgets/todo_tile.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial());
  List<TodoTIle> todolist = [];

  // event
  void onAddNewTodo(String title, String description) {
    emit(TodoLoading());
    // await Future.delayed(Duration(seconds: 3));
    // buat todo baru
    TodoTIle newTodo = TodoTIle(title: title, description: description);

    // masukkan todo baru ke list
    todolist.add(newTodo);
    emit(TodoAdd());
  }

  void onDeleteTodo(String title) {
    emit(TodoLoading());
    todolist.removeWhere((item) => item.title == title);
    emit(TodoDelete());
  }
}
