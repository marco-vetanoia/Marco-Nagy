// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tech_badge_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TechBadgeEntity {

 String get id; String get label; String get iconKey; int get order;
/// Create a copy of TechBadgeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TechBadgeEntityCopyWith<TechBadgeEntity> get copyWith => _$TechBadgeEntityCopyWithImpl<TechBadgeEntity>(this as TechBadgeEntity, _$identity);

  /// Serializes this TechBadgeEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TechBadgeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.iconKey, iconKey) || other.iconKey == iconKey)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,iconKey,order);

@override
String toString() {
  return 'TechBadgeEntity(id: $id, label: $label, iconKey: $iconKey, order: $order)';
}


}

/// @nodoc
abstract mixin class $TechBadgeEntityCopyWith<$Res>  {
  factory $TechBadgeEntityCopyWith(TechBadgeEntity value, $Res Function(TechBadgeEntity) _then) = _$TechBadgeEntityCopyWithImpl;
@useResult
$Res call({
 String id, String label, String iconKey, int order
});




}
/// @nodoc
class _$TechBadgeEntityCopyWithImpl<$Res>
    implements $TechBadgeEntityCopyWith<$Res> {
  _$TechBadgeEntityCopyWithImpl(this._self, this._then);

  final TechBadgeEntity _self;
  final $Res Function(TechBadgeEntity) _then;

/// Create a copy of TechBadgeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? label = null,Object? iconKey = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,iconKey: null == iconKey ? _self.iconKey : iconKey // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TechBadgeEntity].
extension TechBadgeEntityPatterns on TechBadgeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TechBadgeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TechBadgeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TechBadgeEntity value)  $default,){
final _that = this;
switch (_that) {
case _TechBadgeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TechBadgeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TechBadgeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String label,  String iconKey,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TechBadgeEntity() when $default != null:
return $default(_that.id,_that.label,_that.iconKey,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String label,  String iconKey,  int order)  $default,) {final _that = this;
switch (_that) {
case _TechBadgeEntity():
return $default(_that.id,_that.label,_that.iconKey,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String label,  String iconKey,  int order)?  $default,) {final _that = this;
switch (_that) {
case _TechBadgeEntity() when $default != null:
return $default(_that.id,_that.label,_that.iconKey,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TechBadgeEntity implements TechBadgeEntity {
  const _TechBadgeEntity({required this.id, this.label = '', this.iconKey = 'flutter', this.order = 0});
  factory _TechBadgeEntity.fromJson(Map<String, dynamic> json) => _$TechBadgeEntityFromJson(json);

@override final  String id;
@override@JsonKey() final  String label;
@override@JsonKey() final  String iconKey;
@override@JsonKey() final  int order;

/// Create a copy of TechBadgeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TechBadgeEntityCopyWith<_TechBadgeEntity> get copyWith => __$TechBadgeEntityCopyWithImpl<_TechBadgeEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TechBadgeEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TechBadgeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.label, label) || other.label == label)&&(identical(other.iconKey, iconKey) || other.iconKey == iconKey)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,label,iconKey,order);

@override
String toString() {
  return 'TechBadgeEntity(id: $id, label: $label, iconKey: $iconKey, order: $order)';
}


}

/// @nodoc
abstract mixin class _$TechBadgeEntityCopyWith<$Res> implements $TechBadgeEntityCopyWith<$Res> {
  factory _$TechBadgeEntityCopyWith(_TechBadgeEntity value, $Res Function(_TechBadgeEntity) _then) = __$TechBadgeEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String label, String iconKey, int order
});




}
/// @nodoc
class __$TechBadgeEntityCopyWithImpl<$Res>
    implements _$TechBadgeEntityCopyWith<$Res> {
  __$TechBadgeEntityCopyWithImpl(this._self, this._then);

  final _TechBadgeEntity _self;
  final $Res Function(_TechBadgeEntity) _then;

/// Create a copy of TechBadgeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? label = null,Object? iconKey = null,Object? order = null,}) {
  return _then(_TechBadgeEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,iconKey: null == iconKey ? _self.iconKey : iconKey // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
