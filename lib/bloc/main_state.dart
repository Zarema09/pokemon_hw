part of 'main_bloc.dart';

sealed class MainState {}

final class MainInitial extends MainEvent{}

final class DataLoading extends MainEvent{}

final class SuccessLoaded extends MainEvent{
  final List <Model> data;

  SuccessLoaded(this.data);
}
