// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'showcase_panel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShowcasePanel {

 String get id; ShowcaseFormat get format;/// Overrides the owning project's background when set.
 ShotBackground? get backgroundOverride;/// A list, not a single shot: the reference feature graphic overlaps two
/// devices in one panel.
 List<MediaShot> get shots; String get captionEn; String get captionAr; String get subtitleEn; String get subtitleAr; CaptionPlacement get captionPlacement; String get captionColorHex; int get order;
/// Create a copy of ShowcasePanel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShowcasePanelCopyWith<ShowcasePanel> get copyWith => _$ShowcasePanelCopyWithImpl<ShowcasePanel>(this as ShowcasePanel, _$identity);

  /// Serializes this ShowcasePanel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowcasePanel&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.backgroundOverride, backgroundOverride) || other.backgroundOverride == backgroundOverride)&&const DeepCollectionEquality().equals(other.shots, shots)&&(identical(other.captionEn, captionEn) || other.captionEn == captionEn)&&(identical(other.captionAr, captionAr) || other.captionAr == captionAr)&&(identical(other.subtitleEn, subtitleEn) || other.subtitleEn == subtitleEn)&&(identical(other.subtitleAr, subtitleAr) || other.subtitleAr == subtitleAr)&&(identical(other.captionPlacement, captionPlacement) || other.captionPlacement == captionPlacement)&&(identical(other.captionColorHex, captionColorHex) || other.captionColorHex == captionColorHex)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,format,backgroundOverride,const DeepCollectionEquality().hash(shots),captionEn,captionAr,subtitleEn,subtitleAr,captionPlacement,captionColorHex,order);

@override
String toString() {
  return 'ShowcasePanel(id: $id, format: $format, backgroundOverride: $backgroundOverride, shots: $shots, captionEn: $captionEn, captionAr: $captionAr, subtitleEn: $subtitleEn, subtitleAr: $subtitleAr, captionPlacement: $captionPlacement, captionColorHex: $captionColorHex, order: $order)';
}


}

/// @nodoc
abstract mixin class $ShowcasePanelCopyWith<$Res>  {
  factory $ShowcasePanelCopyWith(ShowcasePanel value, $Res Function(ShowcasePanel) _then) = _$ShowcasePanelCopyWithImpl;
@useResult
$Res call({
 String id, ShowcaseFormat format, ShotBackground? backgroundOverride, List<MediaShot> shots, String captionEn, String captionAr, String subtitleEn, String subtitleAr, CaptionPlacement captionPlacement, String captionColorHex, int order
});


$ShotBackgroundCopyWith<$Res>? get backgroundOverride;

}
/// @nodoc
class _$ShowcasePanelCopyWithImpl<$Res>
    implements $ShowcasePanelCopyWith<$Res> {
  _$ShowcasePanelCopyWithImpl(this._self, this._then);

  final ShowcasePanel _self;
  final $Res Function(ShowcasePanel) _then;

/// Create a copy of ShowcasePanel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? format = null,Object? backgroundOverride = freezed,Object? shots = null,Object? captionEn = null,Object? captionAr = null,Object? subtitleEn = null,Object? subtitleAr = null,Object? captionPlacement = null,Object? captionColorHex = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as ShowcaseFormat,backgroundOverride: freezed == backgroundOverride ? _self.backgroundOverride : backgroundOverride // ignore: cast_nullable_to_non_nullable
as ShotBackground?,shots: null == shots ? _self.shots : shots // ignore: cast_nullable_to_non_nullable
as List<MediaShot>,captionEn: null == captionEn ? _self.captionEn : captionEn // ignore: cast_nullable_to_non_nullable
as String,captionAr: null == captionAr ? _self.captionAr : captionAr // ignore: cast_nullable_to_non_nullable
as String,subtitleEn: null == subtitleEn ? _self.subtitleEn : subtitleEn // ignore: cast_nullable_to_non_nullable
as String,subtitleAr: null == subtitleAr ? _self.subtitleAr : subtitleAr // ignore: cast_nullable_to_non_nullable
as String,captionPlacement: null == captionPlacement ? _self.captionPlacement : captionPlacement // ignore: cast_nullable_to_non_nullable
as CaptionPlacement,captionColorHex: null == captionColorHex ? _self.captionColorHex : captionColorHex // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ShowcasePanel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShotBackgroundCopyWith<$Res>? get backgroundOverride {
    if (_self.backgroundOverride == null) {
    return null;
  }

  return $ShotBackgroundCopyWith<$Res>(_self.backgroundOverride!, (value) {
    return _then(_self.copyWith(backgroundOverride: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShowcasePanel].
extension ShowcasePanelPatterns on ShowcasePanel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShowcasePanel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShowcasePanel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShowcasePanel value)  $default,){
final _that = this;
switch (_that) {
case _ShowcasePanel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShowcasePanel value)?  $default,){
final _that = this;
switch (_that) {
case _ShowcasePanel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  ShowcaseFormat format,  ShotBackground? backgroundOverride,  List<MediaShot> shots,  String captionEn,  String captionAr,  String subtitleEn,  String subtitleAr,  CaptionPlacement captionPlacement,  String captionColorHex,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShowcasePanel() when $default != null:
return $default(_that.id,_that.format,_that.backgroundOverride,_that.shots,_that.captionEn,_that.captionAr,_that.subtitleEn,_that.subtitleAr,_that.captionPlacement,_that.captionColorHex,_that.order);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  ShowcaseFormat format,  ShotBackground? backgroundOverride,  List<MediaShot> shots,  String captionEn,  String captionAr,  String subtitleEn,  String subtitleAr,  CaptionPlacement captionPlacement,  String captionColorHex,  int order)  $default,) {final _that = this;
switch (_that) {
case _ShowcasePanel():
return $default(_that.id,_that.format,_that.backgroundOverride,_that.shots,_that.captionEn,_that.captionAr,_that.subtitleEn,_that.subtitleAr,_that.captionPlacement,_that.captionColorHex,_that.order);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  ShowcaseFormat format,  ShotBackground? backgroundOverride,  List<MediaShot> shots,  String captionEn,  String captionAr,  String subtitleEn,  String subtitleAr,  CaptionPlacement captionPlacement,  String captionColorHex,  int order)?  $default,) {final _that = this;
switch (_that) {
case _ShowcasePanel() when $default != null:
return $default(_that.id,_that.format,_that.backgroundOverride,_that.shots,_that.captionEn,_that.captionAr,_that.subtitleEn,_that.subtitleAr,_that.captionPlacement,_that.captionColorHex,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShowcasePanel implements ShowcasePanel {
  const _ShowcasePanel({required this.id, this.format = ShowcaseFormat.screenshot, this.backgroundOverride, final  List<MediaShot> shots = const <MediaShot>[], this.captionEn = '', this.captionAr = '', this.subtitleEn = '', this.subtitleAr = '', this.captionPlacement = CaptionPlacement.top, this.captionColorHex = 'FFFFFF', this.order = 0}): _shots = shots;
  factory _ShowcasePanel.fromJson(Map<String, dynamic> json) => _$ShowcasePanelFromJson(json);

@override final  String id;
@override@JsonKey() final  ShowcaseFormat format;
/// Overrides the owning project's background when set.
@override final  ShotBackground? backgroundOverride;
/// A list, not a single shot: the reference feature graphic overlaps two
/// devices in one panel.
 final  List<MediaShot> _shots;
/// A list, not a single shot: the reference feature graphic overlaps two
/// devices in one panel.
@override@JsonKey() List<MediaShot> get shots {
  if (_shots is EqualUnmodifiableListView) return _shots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_shots);
}

@override@JsonKey() final  String captionEn;
@override@JsonKey() final  String captionAr;
@override@JsonKey() final  String subtitleEn;
@override@JsonKey() final  String subtitleAr;
@override@JsonKey() final  CaptionPlacement captionPlacement;
@override@JsonKey() final  String captionColorHex;
@override@JsonKey() final  int order;

/// Create a copy of ShowcasePanel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShowcasePanelCopyWith<_ShowcasePanel> get copyWith => __$ShowcasePanelCopyWithImpl<_ShowcasePanel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShowcasePanelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShowcasePanel&&(identical(other.id, id) || other.id == id)&&(identical(other.format, format) || other.format == format)&&(identical(other.backgroundOverride, backgroundOverride) || other.backgroundOverride == backgroundOverride)&&const DeepCollectionEquality().equals(other._shots, _shots)&&(identical(other.captionEn, captionEn) || other.captionEn == captionEn)&&(identical(other.captionAr, captionAr) || other.captionAr == captionAr)&&(identical(other.subtitleEn, subtitleEn) || other.subtitleEn == subtitleEn)&&(identical(other.subtitleAr, subtitleAr) || other.subtitleAr == subtitleAr)&&(identical(other.captionPlacement, captionPlacement) || other.captionPlacement == captionPlacement)&&(identical(other.captionColorHex, captionColorHex) || other.captionColorHex == captionColorHex)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,format,backgroundOverride,const DeepCollectionEquality().hash(_shots),captionEn,captionAr,subtitleEn,subtitleAr,captionPlacement,captionColorHex,order);

@override
String toString() {
  return 'ShowcasePanel(id: $id, format: $format, backgroundOverride: $backgroundOverride, shots: $shots, captionEn: $captionEn, captionAr: $captionAr, subtitleEn: $subtitleEn, subtitleAr: $subtitleAr, captionPlacement: $captionPlacement, captionColorHex: $captionColorHex, order: $order)';
}


}

/// @nodoc
abstract mixin class _$ShowcasePanelCopyWith<$Res> implements $ShowcasePanelCopyWith<$Res> {
  factory _$ShowcasePanelCopyWith(_ShowcasePanel value, $Res Function(_ShowcasePanel) _then) = __$ShowcasePanelCopyWithImpl;
@override @useResult
$Res call({
 String id, ShowcaseFormat format, ShotBackground? backgroundOverride, List<MediaShot> shots, String captionEn, String captionAr, String subtitleEn, String subtitleAr, CaptionPlacement captionPlacement, String captionColorHex, int order
});


@override $ShotBackgroundCopyWith<$Res>? get backgroundOverride;

}
/// @nodoc
class __$ShowcasePanelCopyWithImpl<$Res>
    implements _$ShowcasePanelCopyWith<$Res> {
  __$ShowcasePanelCopyWithImpl(this._self, this._then);

  final _ShowcasePanel _self;
  final $Res Function(_ShowcasePanel) _then;

/// Create a copy of ShowcasePanel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? format = null,Object? backgroundOverride = freezed,Object? shots = null,Object? captionEn = null,Object? captionAr = null,Object? subtitleEn = null,Object? subtitleAr = null,Object? captionPlacement = null,Object? captionColorHex = null,Object? order = null,}) {
  return _then(_ShowcasePanel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as ShowcaseFormat,backgroundOverride: freezed == backgroundOverride ? _self.backgroundOverride : backgroundOverride // ignore: cast_nullable_to_non_nullable
as ShotBackground?,shots: null == shots ? _self._shots : shots // ignore: cast_nullable_to_non_nullable
as List<MediaShot>,captionEn: null == captionEn ? _self.captionEn : captionEn // ignore: cast_nullable_to_non_nullable
as String,captionAr: null == captionAr ? _self.captionAr : captionAr // ignore: cast_nullable_to_non_nullable
as String,subtitleEn: null == subtitleEn ? _self.subtitleEn : subtitleEn // ignore: cast_nullable_to_non_nullable
as String,subtitleAr: null == subtitleAr ? _self.subtitleAr : subtitleAr // ignore: cast_nullable_to_non_nullable
as String,captionPlacement: null == captionPlacement ? _self.captionPlacement : captionPlacement // ignore: cast_nullable_to_non_nullable
as CaptionPlacement,captionColorHex: null == captionColorHex ? _self.captionColorHex : captionColorHex // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ShowcasePanel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShotBackgroundCopyWith<$Res>? get backgroundOverride {
    if (_self.backgroundOverride == null) {
    return null;
  }

  return $ShotBackgroundCopyWith<$Res>(_self.backgroundOverride!, (value) {
    return _then(_self.copyWith(backgroundOverride: value));
  });
}
}

// dart format on
