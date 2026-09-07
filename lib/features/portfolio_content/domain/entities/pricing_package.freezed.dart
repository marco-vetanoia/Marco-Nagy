// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pricing_package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PricingPackage {

 String get id; String get name; String get nameAr; int get basePrice; String get timelineLabel; String get timelineLabelAr; String get description; String get descriptionAr; int get order;
/// Create a copy of PricingPackage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingPackageCopyWith<PricingPackage> get copyWith => _$PricingPackageCopyWithImpl<PricingPackage>(this as PricingPackage, _$identity);

  /// Serializes this PricingPackage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingPackage&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.timelineLabel, timelineLabel) || other.timelineLabel == timelineLabel)&&(identical(other.timelineLabelAr, timelineLabelAr) || other.timelineLabelAr == timelineLabelAr)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionAr, descriptionAr) || other.descriptionAr == descriptionAr)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameAr,basePrice,timelineLabel,timelineLabelAr,description,descriptionAr,order);

@override
String toString() {
  return 'PricingPackage(id: $id, name: $name, nameAr: $nameAr, basePrice: $basePrice, timelineLabel: $timelineLabel, timelineLabelAr: $timelineLabelAr, description: $description, descriptionAr: $descriptionAr, order: $order)';
}


}

/// @nodoc
abstract mixin class $PricingPackageCopyWith<$Res>  {
  factory $PricingPackageCopyWith(PricingPackage value, $Res Function(PricingPackage) _then) = _$PricingPackageCopyWithImpl;
@useResult
$Res call({
 String id, String name, String nameAr, int basePrice, String timelineLabel, String timelineLabelAr, String description, String descriptionAr, int order
});




}
/// @nodoc
class _$PricingPackageCopyWithImpl<$Res>
    implements $PricingPackageCopyWith<$Res> {
  _$PricingPackageCopyWithImpl(this._self, this._then);

  final PricingPackage _self;
  final $Res Function(PricingPackage) _then;

/// Create a copy of PricingPackage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameAr = null,Object? basePrice = null,Object? timelineLabel = null,Object? timelineLabelAr = null,Object? description = null,Object? descriptionAr = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,timelineLabel: null == timelineLabel ? _self.timelineLabel : timelineLabel // ignore: cast_nullable_to_non_nullable
as String,timelineLabelAr: null == timelineLabelAr ? _self.timelineLabelAr : timelineLabelAr // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionAr: null == descriptionAr ? _self.descriptionAr : descriptionAr // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PricingPackage].
extension PricingPackagePatterns on PricingPackage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingPackage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingPackage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingPackage value)  $default,){
final _that = this;
switch (_that) {
case _PricingPackage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingPackage value)?  $default,){
final _that = this;
switch (_that) {
case _PricingPackage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String nameAr,  int basePrice,  String timelineLabel,  String timelineLabelAr,  String description,  String descriptionAr,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingPackage() when $default != null:
return $default(_that.id,_that.name,_that.nameAr,_that.basePrice,_that.timelineLabel,_that.timelineLabelAr,_that.description,_that.descriptionAr,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String nameAr,  int basePrice,  String timelineLabel,  String timelineLabelAr,  String description,  String descriptionAr,  int order)  $default,) {final _that = this;
switch (_that) {
case _PricingPackage():
return $default(_that.id,_that.name,_that.nameAr,_that.basePrice,_that.timelineLabel,_that.timelineLabelAr,_that.description,_that.descriptionAr,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String nameAr,  int basePrice,  String timelineLabel,  String timelineLabelAr,  String description,  String descriptionAr,  int order)?  $default,) {final _that = this;
switch (_that) {
case _PricingPackage() when $default != null:
return $default(_that.id,_that.name,_that.nameAr,_that.basePrice,_that.timelineLabel,_that.timelineLabelAr,_that.description,_that.descriptionAr,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricingPackage implements PricingPackage {
  const _PricingPackage({required this.id, required this.name, this.nameAr = '', this.basePrice = 0, this.timelineLabel = '', this.timelineLabelAr = '', this.description = '', this.descriptionAr = '', this.order = 0});
  factory _PricingPackage.fromJson(Map<String, dynamic> json) => _$PricingPackageFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String nameAr;
@override@JsonKey() final  int basePrice;
@override@JsonKey() final  String timelineLabel;
@override@JsonKey() final  String timelineLabelAr;
@override@JsonKey() final  String description;
@override@JsonKey() final  String descriptionAr;
@override@JsonKey() final  int order;

/// Create a copy of PricingPackage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingPackageCopyWith<_PricingPackage> get copyWith => __$PricingPackageCopyWithImpl<_PricingPackage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingPackageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingPackage&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.basePrice, basePrice) || other.basePrice == basePrice)&&(identical(other.timelineLabel, timelineLabel) || other.timelineLabel == timelineLabel)&&(identical(other.timelineLabelAr, timelineLabelAr) || other.timelineLabelAr == timelineLabelAr)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionAr, descriptionAr) || other.descriptionAr == descriptionAr)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameAr,basePrice,timelineLabel,timelineLabelAr,description,descriptionAr,order);

@override
String toString() {
  return 'PricingPackage(id: $id, name: $name, nameAr: $nameAr, basePrice: $basePrice, timelineLabel: $timelineLabel, timelineLabelAr: $timelineLabelAr, description: $description, descriptionAr: $descriptionAr, order: $order)';
}


}

/// @nodoc
abstract mixin class _$PricingPackageCopyWith<$Res> implements $PricingPackageCopyWith<$Res> {
  factory _$PricingPackageCopyWith(_PricingPackage value, $Res Function(_PricingPackage) _then) = __$PricingPackageCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String nameAr, int basePrice, String timelineLabel, String timelineLabelAr, String description, String descriptionAr, int order
});




}
/// @nodoc
class __$PricingPackageCopyWithImpl<$Res>
    implements _$PricingPackageCopyWith<$Res> {
  __$PricingPackageCopyWithImpl(this._self, this._then);

  final _PricingPackage _self;
  final $Res Function(_PricingPackage) _then;

/// Create a copy of PricingPackage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameAr = null,Object? basePrice = null,Object? timelineLabel = null,Object? timelineLabelAr = null,Object? description = null,Object? descriptionAr = null,Object? order = null,}) {
  return _then(_PricingPackage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,basePrice: null == basePrice ? _self.basePrice : basePrice // ignore: cast_nullable_to_non_nullable
as int,timelineLabel: null == timelineLabel ? _self.timelineLabel : timelineLabel // ignore: cast_nullable_to_non_nullable
as String,timelineLabelAr: null == timelineLabelAr ? _self.timelineLabelAr : timelineLabelAr // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionAr: null == descriptionAr ? _self.descriptionAr : descriptionAr // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
