// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shot_background.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShotBackground {

 ShotBackgroundStyle get style; String get colorHex; String get colorHex2; ImageRef get image;/// Scrim laid over the background so caption text stays readable on a
/// light photo. This is the single most common reason a panel looks broken.
 double get overlayOpacity; double get blurSigma;
/// Create a copy of ShotBackground
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShotBackgroundCopyWith<ShotBackground> get copyWith => _$ShotBackgroundCopyWithImpl<ShotBackground>(this as ShotBackground, _$identity);

  /// Serializes this ShotBackground to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShotBackground&&(identical(other.style, style) || other.style == style)&&(identical(other.colorHex, colorHex) || other.colorHex == colorHex)&&(identical(other.colorHex2, colorHex2) || other.colorHex2 == colorHex2)&&(identical(other.image, image) || other.image == image)&&(identical(other.overlayOpacity, overlayOpacity) || other.overlayOpacity == overlayOpacity)&&(identical(other.blurSigma, blurSigma) || other.blurSigma == blurSigma));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,style,colorHex,colorHex2,image,overlayOpacity,blurSigma);

@override
String toString() {
  return 'ShotBackground(style: $style, colorHex: $colorHex, colorHex2: $colorHex2, image: $image, overlayOpacity: $overlayOpacity, blurSigma: $blurSigma)';
}


}

/// @nodoc
abstract mixin class $ShotBackgroundCopyWith<$Res>  {
  factory $ShotBackgroundCopyWith(ShotBackground value, $Res Function(ShotBackground) _then) = _$ShotBackgroundCopyWithImpl;
@useResult
$Res call({
 ShotBackgroundStyle style, String colorHex, String colorHex2, ImageRef image, double overlayOpacity, double blurSigma
});


$ImageRefCopyWith<$Res> get image;

}
/// @nodoc
class _$ShotBackgroundCopyWithImpl<$Res>
    implements $ShotBackgroundCopyWith<$Res> {
  _$ShotBackgroundCopyWithImpl(this._self, this._then);

  final ShotBackground _self;
  final $Res Function(ShotBackground) _then;

/// Create a copy of ShotBackground
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? style = null,Object? colorHex = null,Object? colorHex2 = null,Object? image = null,Object? overlayOpacity = null,Object? blurSigma = null,}) {
  return _then(_self.copyWith(
style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as ShotBackgroundStyle,colorHex: null == colorHex ? _self.colorHex : colorHex // ignore: cast_nullable_to_non_nullable
as String,colorHex2: null == colorHex2 ? _self.colorHex2 : colorHex2 // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ImageRef,overlayOpacity: null == overlayOpacity ? _self.overlayOpacity : overlayOpacity // ignore: cast_nullable_to_non_nullable
as double,blurSigma: null == blurSigma ? _self.blurSigma : blurSigma // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of ShotBackground
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageRefCopyWith<$Res> get image {
  
  return $ImageRefCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}


/// Adds pattern-matching-related methods to [ShotBackground].
extension ShotBackgroundPatterns on ShotBackground {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShotBackground value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShotBackground() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShotBackground value)  $default,){
final _that = this;
switch (_that) {
case _ShotBackground():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShotBackground value)?  $default,){
final _that = this;
switch (_that) {
case _ShotBackground() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ShotBackgroundStyle style,  String colorHex,  String colorHex2,  ImageRef image,  double overlayOpacity,  double blurSigma)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShotBackground() when $default != null:
return $default(_that.style,_that.colorHex,_that.colorHex2,_that.image,_that.overlayOpacity,_that.blurSigma);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ShotBackgroundStyle style,  String colorHex,  String colorHex2,  ImageRef image,  double overlayOpacity,  double blurSigma)  $default,) {final _that = this;
switch (_that) {
case _ShotBackground():
return $default(_that.style,_that.colorHex,_that.colorHex2,_that.image,_that.overlayOpacity,_that.blurSigma);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ShotBackgroundStyle style,  String colorHex,  String colorHex2,  ImageRef image,  double overlayOpacity,  double blurSigma)?  $default,) {final _that = this;
switch (_that) {
case _ShotBackground() when $default != null:
return $default(_that.style,_that.colorHex,_that.colorHex2,_that.image,_that.overlayOpacity,_that.blurSigma);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShotBackground extends ShotBackground {
  const _ShotBackground({this.style = ShotBackgroundStyle.none, this.colorHex = '0A1533', this.colorHex2 = '1B3F8F', this.image = const ImageRef(), this.overlayOpacity = 0.25, this.blurSigma = 0}): super._();
  factory _ShotBackground.fromJson(Map<String, dynamic> json) => _$ShotBackgroundFromJson(json);

@override@JsonKey() final  ShotBackgroundStyle style;
@override@JsonKey() final  String colorHex;
@override@JsonKey() final  String colorHex2;
@override@JsonKey() final  ImageRef image;
/// Scrim laid over the background so caption text stays readable on a
/// light photo. This is the single most common reason a panel looks broken.
@override@JsonKey() final  double overlayOpacity;
@override@JsonKey() final  double blurSigma;

/// Create a copy of ShotBackground
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShotBackgroundCopyWith<_ShotBackground> get copyWith => __$ShotBackgroundCopyWithImpl<_ShotBackground>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShotBackgroundToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShotBackground&&(identical(other.style, style) || other.style == style)&&(identical(other.colorHex, colorHex) || other.colorHex == colorHex)&&(identical(other.colorHex2, colorHex2) || other.colorHex2 == colorHex2)&&(identical(other.image, image) || other.image == image)&&(identical(other.overlayOpacity, overlayOpacity) || other.overlayOpacity == overlayOpacity)&&(identical(other.blurSigma, blurSigma) || other.blurSigma == blurSigma));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,style,colorHex,colorHex2,image,overlayOpacity,blurSigma);

@override
String toString() {
  return 'ShotBackground(style: $style, colorHex: $colorHex, colorHex2: $colorHex2, image: $image, overlayOpacity: $overlayOpacity, blurSigma: $blurSigma)';
}


}

/// @nodoc
abstract mixin class _$ShotBackgroundCopyWith<$Res> implements $ShotBackgroundCopyWith<$Res> {
  factory _$ShotBackgroundCopyWith(_ShotBackground value, $Res Function(_ShotBackground) _then) = __$ShotBackgroundCopyWithImpl;
@override @useResult
$Res call({
 ShotBackgroundStyle style, String colorHex, String colorHex2, ImageRef image, double overlayOpacity, double blurSigma
});


@override $ImageRefCopyWith<$Res> get image;

}
/// @nodoc
class __$ShotBackgroundCopyWithImpl<$Res>
    implements _$ShotBackgroundCopyWith<$Res> {
  __$ShotBackgroundCopyWithImpl(this._self, this._then);

  final _ShotBackground _self;
  final $Res Function(_ShotBackground) _then;

/// Create a copy of ShotBackground
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? style = null,Object? colorHex = null,Object? colorHex2 = null,Object? image = null,Object? overlayOpacity = null,Object? blurSigma = null,}) {
  return _then(_ShotBackground(
style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as ShotBackgroundStyle,colorHex: null == colorHex ? _self.colorHex : colorHex // ignore: cast_nullable_to_non_nullable
as String,colorHex2: null == colorHex2 ? _self.colorHex2 : colorHex2 // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as ImageRef,overlayOpacity: null == overlayOpacity ? _self.overlayOpacity : overlayOpacity // ignore: cast_nullable_to_non_nullable
as double,blurSigma: null == blurSigma ? _self.blurSigma : blurSigma // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of ShotBackground
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageRefCopyWith<$Res> get image {
  
  return $ImageRefCopyWith<$Res>(_self.image, (value) {
    return _then(_self.copyWith(image: value));
  });
}
}

// dart format on
