// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Certificate {

 String get id; String get title; String get titleAr; String get provider; String get providerAr; String get year; String get location; String get locationAr;/// Path to a real certificate scan. Empty renders a generated card styled
/// like a certificate instead.
 String get imageAsset; int get order;
/// Create a copy of Certificate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CertificateCopyWith<Certificate> get copyWith => _$CertificateCopyWithImpl<Certificate>(this as Certificate, _$identity);

  /// Serializes this Certificate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Certificate&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.providerAr, providerAr) || other.providerAr == providerAr)&&(identical(other.year, year) || other.year == year)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationAr, locationAr) || other.locationAr == locationAr)&&(identical(other.imageAsset, imageAsset) || other.imageAsset == imageAsset)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleAr,provider,providerAr,year,location,locationAr,imageAsset,order);

@override
String toString() {
  return 'Certificate(id: $id, title: $title, titleAr: $titleAr, provider: $provider, providerAr: $providerAr, year: $year, location: $location, locationAr: $locationAr, imageAsset: $imageAsset, order: $order)';
}


}

/// @nodoc
abstract mixin class $CertificateCopyWith<$Res>  {
  factory $CertificateCopyWith(Certificate value, $Res Function(Certificate) _then) = _$CertificateCopyWithImpl;
@useResult
$Res call({
 String id, String title, String titleAr, String provider, String providerAr, String year, String location, String locationAr, String imageAsset, int order
});




}
/// @nodoc
class _$CertificateCopyWithImpl<$Res>
    implements $CertificateCopyWith<$Res> {
  _$CertificateCopyWithImpl(this._self, this._then);

  final Certificate _self;
  final $Res Function(Certificate) _then;

/// Create a copy of Certificate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? titleAr = null,Object? provider = null,Object? providerAr = null,Object? year = null,Object? location = null,Object? locationAr = null,Object? imageAsset = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerAr: null == providerAr ? _self.providerAr : providerAr // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,locationAr: null == locationAr ? _self.locationAr : locationAr // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Certificate].
extension CertificatePatterns on Certificate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Certificate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Certificate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Certificate value)  $default,){
final _that = this;
switch (_that) {
case _Certificate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Certificate value)?  $default,){
final _that = this;
switch (_that) {
case _Certificate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String titleAr,  String provider,  String providerAr,  String year,  String location,  String locationAr,  String imageAsset,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Certificate() when $default != null:
return $default(_that.id,_that.title,_that.titleAr,_that.provider,_that.providerAr,_that.year,_that.location,_that.locationAr,_that.imageAsset,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String titleAr,  String provider,  String providerAr,  String year,  String location,  String locationAr,  String imageAsset,  int order)  $default,) {final _that = this;
switch (_that) {
case _Certificate():
return $default(_that.id,_that.title,_that.titleAr,_that.provider,_that.providerAr,_that.year,_that.location,_that.locationAr,_that.imageAsset,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String titleAr,  String provider,  String providerAr,  String year,  String location,  String locationAr,  String imageAsset,  int order)?  $default,) {final _that = this;
switch (_that) {
case _Certificate() when $default != null:
return $default(_that.id,_that.title,_that.titleAr,_that.provider,_that.providerAr,_that.year,_that.location,_that.locationAr,_that.imageAsset,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Certificate implements Certificate {
  const _Certificate({required this.id, required this.title, this.titleAr = '', this.provider = '', this.providerAr = '', this.year = '', this.location = '', this.locationAr = '', this.imageAsset = '', this.order = 0});
  factory _Certificate.fromJson(Map<String, dynamic> json) => _$CertificateFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey() final  String titleAr;
@override@JsonKey() final  String provider;
@override@JsonKey() final  String providerAr;
@override@JsonKey() final  String year;
@override@JsonKey() final  String location;
@override@JsonKey() final  String locationAr;
/// Path to a real certificate scan. Empty renders a generated card styled
/// like a certificate instead.
@override@JsonKey() final  String imageAsset;
@override@JsonKey() final  int order;

/// Create a copy of Certificate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CertificateCopyWith<_Certificate> get copyWith => __$CertificateCopyWithImpl<_Certificate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CertificateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Certificate&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.providerAr, providerAr) || other.providerAr == providerAr)&&(identical(other.year, year) || other.year == year)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationAr, locationAr) || other.locationAr == locationAr)&&(identical(other.imageAsset, imageAsset) || other.imageAsset == imageAsset)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleAr,provider,providerAr,year,location,locationAr,imageAsset,order);

@override
String toString() {
  return 'Certificate(id: $id, title: $title, titleAr: $titleAr, provider: $provider, providerAr: $providerAr, year: $year, location: $location, locationAr: $locationAr, imageAsset: $imageAsset, order: $order)';
}


}

/// @nodoc
abstract mixin class _$CertificateCopyWith<$Res> implements $CertificateCopyWith<$Res> {
  factory _$CertificateCopyWith(_Certificate value, $Res Function(_Certificate) _then) = __$CertificateCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String titleAr, String provider, String providerAr, String year, String location, String locationAr, String imageAsset, int order
});




}
/// @nodoc
class __$CertificateCopyWithImpl<$Res>
    implements _$CertificateCopyWith<$Res> {
  __$CertificateCopyWithImpl(this._self, this._then);

  final _Certificate _self;
  final $Res Function(_Certificate) _then;

/// Create a copy of Certificate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? titleAr = null,Object? provider = null,Object? providerAr = null,Object? year = null,Object? location = null,Object? locationAr = null,Object? imageAsset = null,Object? order = null,}) {
  return _then(_Certificate(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,providerAr: null == providerAr ? _self.providerAr : providerAr // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,locationAr: null == locationAr ? _self.locationAr : locationAr // ignore: cast_nullable_to_non_nullable
as String,imageAsset: null == imageAsset ? _self.imageAsset : imageAsset // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
