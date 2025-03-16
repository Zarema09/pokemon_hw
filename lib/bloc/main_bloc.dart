import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
import '../model.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<GetHarryDataEvent>((event, emit) async {
      emit(DataLoading());
      final listResponse = await getListModel();
      emit(SuccessLoaded(listResponse));
    });
  }

  Future<List<Model>> getListModel() async {
    final dio = Dio();

    try {
      final response = await dio.get('https://potterapi-fedeperin.vercel.app/en/characters');

      final list = (json.decode(jsonEncode(response.data)) as List)
          .map((data) => Model.fromJson(data))
          .toList();

      return list;
    } catch (e) {
      return [];
    }
  }
}