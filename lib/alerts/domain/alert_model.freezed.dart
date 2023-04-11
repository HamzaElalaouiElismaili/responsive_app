// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alert_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Alert _$AlertFromJson(Map<String, dynamic> json) {
  return _Alert.fromJson(json);
}

/// @nodoc
mixin _$Alert {
  String get site => throw _privateConstructorUsedError;
  String get zone => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  bool get isRoom => throw _privateConstructorUsedError;
  bool get isInside => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlertCopyWith<Alert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertCopyWith<$Res> {
  factory $AlertCopyWith(Alert value, $Res Function(Alert) then) =
      _$AlertCopyWithImpl<$Res, Alert>;
  @useResult
  $Res call(
      {String site,
      String zone,
      String level,
      String location,
      String position,
      String time,
      bool isRoom,
      bool isInside});
}

/// @nodoc
class _$AlertCopyWithImpl<$Res, $Val extends Alert>
    implements $AlertCopyWith<$Res> {
  _$AlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = null,
    Object? zone = null,
    Object? level = null,
    Object? location = null,
    Object? position = null,
    Object? time = null,
    Object? isRoom = null,
    Object? isInside = null,
  }) {
    return _then(_value.copyWith(
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      zone: null == zone
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isRoom: null == isRoom
          ? _value.isRoom
          : isRoom // ignore: cast_nullable_to_non_nullable
              as bool,
      isInside: null == isInside
          ? _value.isInside
          : isInside // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlertCopyWith<$Res> implements $AlertCopyWith<$Res> {
  factory _$$_AlertCopyWith(_$_Alert value, $Res Function(_$_Alert) then) =
      __$$_AlertCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String site,
      String zone,
      String level,
      String location,
      String position,
      String time,
      bool isRoom,
      bool isInside});
}

/// @nodoc
class __$$_AlertCopyWithImpl<$Res> extends _$AlertCopyWithImpl<$Res, _$_Alert>
    implements _$$_AlertCopyWith<$Res> {
  __$$_AlertCopyWithImpl(_$_Alert _value, $Res Function(_$_Alert) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = null,
    Object? zone = null,
    Object? level = null,
    Object? location = null,
    Object? position = null,
    Object? time = null,
    Object? isRoom = null,
    Object? isInside = null,
  }) {
    return _then(_$_Alert(
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      zone: null == zone
          ? _value.zone
          : zone // ignore: cast_nullable_to_non_nullable
              as String,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      isRoom: null == isRoom
          ? _value.isRoom
          : isRoom // ignore: cast_nullable_to_non_nullable
              as bool,
      isInside: null == isInside
          ? _value.isInside
          : isInside // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Alert extends _Alert {
  const _$_Alert(
      {required this.site,
      required this.zone,
      required this.level,
      required this.location,
      required this.position,
      required this.time,
      required this.isRoom,
      required this.isInside})
      : super._();

  factory _$_Alert.fromJson(Map<String, dynamic> json) =>
      _$$_AlertFromJson(json);

  @override
  final String site;
  @override
  final String zone;
  @override
  final String level;
  @override
  final String location;
  @override
  final String position;
  @override
  final String time;
  @override
  final bool isRoom;
  @override
  final bool isInside;

  @override
  String toString() {
    return 'Alert(site: $site, zone: $zone, level: $level, location: $location, position: $position, time: $time, isRoom: $isRoom, isInside: $isInside)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Alert &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.zone, zone) || other.zone == zone) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isRoom, isRoom) || other.isRoom == isRoom) &&
            (identical(other.isInside, isInside) ||
                other.isInside == isInside));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, site, zone, level, location,
      position, time, isRoom, isInside);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlertCopyWith<_$_Alert> get copyWith =>
      __$$_AlertCopyWithImpl<_$_Alert>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlertToJson(
      this,
    );
  }
}

abstract class _Alert extends Alert {
  const factory _Alert(
      {required final String site,
      required final String zone,
      required final String level,
      required final String location,
      required final String position,
      required final String time,
      required final bool isRoom,
      required final bool isInside}) = _$_Alert;
  const _Alert._() : super._();

  factory _Alert.fromJson(Map<String, dynamic> json) = _$_Alert.fromJson;

  @override
  String get site;
  @override
  String get zone;
  @override
  String get level;
  @override
  String get location;
  @override
  String get position;
  @override
  String get time;
  @override
  bool get isRoom;
  @override
  bool get isInside;
  @override
  @JsonKey(ignore: true)
  _$$_AlertCopyWith<_$_Alert> get copyWith =>
      throw _privateConstructorUsedError;
}
