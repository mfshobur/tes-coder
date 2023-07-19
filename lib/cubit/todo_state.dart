part of 'todo_cubit.dart';

@immutable
abstract class TodoState {}

class TodoInitial extends TodoState {}

class TodoAdd extends TodoState {}

class TodoLoading extends TodoState {}

class TodoAddFailed extends TodoState {}

class TodoDelete extends TodoState {}