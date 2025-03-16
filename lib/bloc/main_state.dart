part of 'main_bloc.dart';

sealed class MainState {}

class MainInitial extends MainState {}

class DataLoading extends MainState {}

class SuccessLoaded extends MainState {
  final List<Model> list;

  SuccessLoaded(this.list);
}