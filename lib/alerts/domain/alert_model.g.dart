// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Alert _$$_AlertFromJson(Map<String, dynamic> json) => _$_Alert(
      site: json['site'] as String,
      zone: json['zone'] as String,
      level: json['level'] as String,
      location: json['location'] as String,
      position: json['position'] as String,
      time: json['time'] as String,
      isRoom: json['isRoom'] as bool,
      isInside: json['isInside'] as bool,
    );

Map<String, dynamic> _$$_AlertToJson(_$_Alert instance) => <String, dynamic>{
      'site': instance.site,
      'zone': instance.zone,
      'level': instance.level,
      'location': instance.location,
      'position': instance.position,
      'time': instance.time,
      'isRoom': instance.isRoom,
      'isInside': instance.isInside,
    };
