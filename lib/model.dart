import 'package:equatable/equatable.dart';

class Model extends Equatable {
  const model(this.fullName,this hogwartsHouse,this image);

  final String fullName;
  final String hogwartsHouse;
  final String image;

  @override
  List<Object> get props => [fullName,hogwartsHouse,image];

  factory Model.fromJson(Map<String,dynamic>json){
  return Model(
  json['fullName'],
  json['hogwartsHouse'],
  json['image']);
  }

}