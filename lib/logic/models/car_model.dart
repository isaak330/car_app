import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


part 'car_model.freezed.dart';

@freezed
class CarModel with _$CarModel {
  const factory CarModel({
  required String photo,
  required String title,
  required int price,
  required double score
  }) = _CarModel;

  factory CarModel.fromJson(Map<String,Object?> json)
  => _$CarModelFromJson(json);
}
