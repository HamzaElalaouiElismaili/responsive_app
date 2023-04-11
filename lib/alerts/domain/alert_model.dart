import 'package:freezed_annotation/freezed_annotation.dart';


part 'alert_model.freezed.dart';
part 'alert_model.g.dart';


@freezed
class Alert with _$Alert {
  const Alert._();
  const factory Alert({
   required String site,
    required String zone,
    required String level,
    required String location,
    required String position,
    required  String time,
    required bool isRoom,
    required bool isInside,
  }) = _Alert;



  factory Alert.fromJson(Map<String, dynamic> json) =>
      _$AlertFromJson(json);


}