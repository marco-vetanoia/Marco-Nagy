// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pricing_add_on.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PricingAddOn {

 String get id; String get name; String get nameAr; int get unitPrice; int get unitTimeDays; bool get hasCounter; String get category; String get categoryAr; int get order;
/// Create a copy of PricingAddOn
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PricingAddOnCopyWith<PricingAddOn> get copyWith => _$PricingAddOnCopyWithImpl<PricingAddOn>(this as PricingAddOn, _$identity);

  /// Serializes this PricingAddOn to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PricingAddOn&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.unitTimeDays, unitTimeDays) || other.unitTimeDays == unitTimeDays)&&(identical(other.hasCounter, hasCounter) || other.hasCounter == hasCounter)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryAr, categoryAr) || other.categoryAr == categoryAr)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameAr,unitPrice,unitTimeDays,hasCounter,category,categoryAr,order);

@override
String toString() {
  return 'PricingAddOn(id: $id, name: $name, nameAr: $nameAr, unitPrice: $unitPrice, unitTimeDays: $unitTimeDays, hasCounter: $hasCounter, category: $category, categoryAr: $categoryAr, order: $order)';
}


}

/// @nodoc
abstract mixin class $PricingAddOnCopyWith<$Res>  {
  factory $PricingAddOnCopyWith(PricingAddOn value, $Res Function(PricingAddOn) _then) = _$PricingAddOnCopyWithImpl;
@useResult
$Res call({
 String id, String name, String nameAr, int unitPrice, int unitTimeDays, bool hasCounter, String category, String categoryAr, int order
});




}
/// @nodoc
class _$PricingAddOnCopyWithImpl<$Res>
    implements $PricingAddOnCopyWith<$Res> {
  _$PricingAddOnCopyWithImpl(this._self, this._then);

  final PricingAddOn _self;
  final $Res Function(PricingAddOn) _then;

/// Create a copy of PricingAddOn
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameAr = null,Object? unitPrice = null,Object? unitTimeDays = null,Object? hasCounter = null,Object? category = null,Object? categoryAr = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,unitTimeDays: null == unitTimeDays ? _self.unitTimeDays : unitTimeDays // ignore: cast_nullable_to_non_nullable
as int,hasCounter: null == hasCounter ? _self.hasCounter : hasCounter // ignore: cast_nullable_to_non_nullable
as bool,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,categoryAr: null == categoryAr ? _self.categoryAr : categoryAr // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PricingAddOn].
extension PricingAddOnPatterns on PricingAddOn {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PricingAddOn value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PricingAddOn() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PricingAddOn value)  $default,){
final _that = this;
switch (_that) {
case _PricingAddOn():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PricingAddOn value)?  $default,){
final _that = this;
switch (_that) {
case _PricingAddOn() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String nameAr,  int unitPrice,  int unitTimeDays,  bool hasCounter,  String category,  String categoryAr,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PricingAddOn() when $default != null:
return $default(_that.id,_that.name,_that.nameAr,_that.unitPrice,_that.unitTimeDays,_that.hasCounter,_that.category,_that.categoryAr,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String nameAr,  int unitPrice,  int unitTimeDays,  bool hasCounter,  String category,  String categoryAr,  int order)  $default,) {final _that = this;
switch (_that) {
case _PricingAddOn():
return $default(_that.id,_that.name,_that.nameAr,_that.unitPrice,_that.unitTimeDays,_that.hasCounter,_that.category,_that.categoryAr,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String nameAr,  int unitPrice,  int unitTimeDays,  bool hasCounter,  String category,  String categoryAr,  int order)?  $default,) {final _that = this;
switch (_that) {
case _PricingAddOn() when $default != null:
return $default(_that.id,_that.name,_that.nameAr,_that.unitPrice,_that.unitTimeDays,_that.hasCounter,_that.category,_that.categoryAr,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PricingAddOn implements PricingAddOn {
  const _PricingAddOn({required this.id, required this.name, this.nameAr = '', this.unitPrice = 0, this.unitTimeDays = 0, this.hasCounter = false, this.category = '', this.categoryAr = '', this.order = 0});
  factory _PricingAddOn.fromJson(Map<String, dynamic> json) => _$PricingAddOnFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String nameAr;
@override@JsonKey() final  int unitPrice;
@override@JsonKey() final  int unitTimeDays;
@override@JsonKey() final  bool hasCounter;
@override@JsonKey() final  String category;
@override@JsonKey() final  String categoryAr;
@override@JsonKey() final  int order;

/// Create a copy of PricingAddOn
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PricingAddOnCopyWith<_PricingAddOn> get copyWith => __$PricingAddOnCopyWithImpl<_PricingAddOn>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PricingAddOnToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PricingAddOn&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameAr, nameAr) || other.nameAr == nameAr)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.unitTimeDays, unitTimeDays) || other.unitTimeDays == unitTimeDays)&&(identical(other.hasCounter, hasCounter) || other.hasCounter == hasCounter)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryAr, categoryAr) || other.categoryAr == categoryAr)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameAr,unitPrice,unitTimeDays,hasCounter,category,categoryAr,order);

@override
String toString() {
  return 'PricingAddOn(id: $id, name: $name, nameAr: $nameAr, unitPrice: $unitPrice, unitTimeDays: $unitTimeDays, hasCounter: $hasCounter, category: $category, categoryAr: $categoryAr, order: $order)';
}


}

/// @nodoc
abstract mixin class _$PricingAddOnCopyWith<$Res> implements $PricingAddOnCopyWith<$Res> {
  factory _$PricingAddOnCopyWith(_PricingAddOn value, $Res Function(_PricingAddOn) _then) = __$PricingAddOnCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String nameAr, int unitPrice, int unitTimeDays, bool hasCounter, String category, String categoryAr, int order
});




}
/// @nodoc
class __$PricingAddOnCopyWithImpl<$Res>
    implements _$PricingAddOnCopyWith<$Res> {
  __$PricingAddOnCopyWithImpl(this._self, this._then);

  final _PricingAddOn _self;
  final $Res Function(_PricingAddOn) _then;

/// Create a copy of PricingAddOn
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameAr = null,Object? unitPrice = null,Object? unitTimeDays = null,Object? hasCounter = null,Object? category = null,Object? categoryAr = null,Object? order = null,}) {
  return _then(_PricingAddOn(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameAr: null == nameAr ? _self.nameAr : nameAr // ignore: cast_nullable_to_non_nullable
as String,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as int,unitTimeDays: null == unitTimeDays ? _self.unitTimeDays : unitTimeDays // ignore: cast_nullable_to_non_nullable
as int,hasCounter: null == hasCounter ? _self.hasCounter : hasCounter // ignore: cast_nullable_to_non_nullable
as bool,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,categoryAr: null == categoryAr ? _self.categoryAr : categoryAr // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
