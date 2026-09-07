// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillGroupEntity {

 String get id; String get labelEn; String get labelAr; List<String> get skills; int get order;
/// Create a copy of SkillGroupEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SkillGroupEntityCopyWith<SkillGroupEntity> get copyWith => _$SkillGroupEntityCopyWithImpl<SkillGroupEntity>(this as SkillGroupEntity, _$identity);

  /// Serializes this SkillGroupEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SkillGroupEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.labelEn, labelEn) || other.labelEn == labelEn)&&(identical(other.labelAr, labelAr) || other.labelAr == labelAr)&&const DeepCollectionEquality().equals(other.skills, skills)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,labelEn,labelAr,const DeepCollectionEquality().hash(skills),order);

@override
String toString() {
  return 'SkillGroupEntity(id: $id, labelEn: $labelEn, labelAr: $labelAr, skills: $skills, order: $order)';
}


}

/// @nodoc
abstract mixin class $SkillGroupEntityCopyWith<$Res>  {
  factory $SkillGroupEntityCopyWith(SkillGroupEntity value, $Res Function(SkillGroupEntity) _then) = _$SkillGroupEntityCopyWithImpl;
@useResult
$Res call({
 String id, String labelEn, String labelAr, List<String> skills, int order
});




}
/// @nodoc
class _$SkillGroupEntityCopyWithImpl<$Res>
    implements $SkillGroupEntityCopyWith<$Res> {
  _$SkillGroupEntityCopyWithImpl(this._self, this._then);

  final SkillGroupEntity _self;
  final $Res Function(SkillGroupEntity) _then;

/// Create a copy of SkillGroupEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? labelEn = null,Object? labelAr = null,Object? skills = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,labelEn: null == labelEn ? _self.labelEn : labelEn // ignore: cast_nullable_to_non_nullable
as String,labelAr: null == labelAr ? _self.labelAr : labelAr // ignore: cast_nullable_to_non_nullable
as String,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SkillGroupEntity].
extension SkillGroupEntityPatterns on SkillGroupEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SkillGroupEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SkillGroupEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SkillGroupEntity value)  $default,){
final _that = this;
switch (_that) {
case _SkillGroupEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SkillGroupEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SkillGroupEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String labelEn,  String labelAr,  List<String> skills,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SkillGroupEntity() when $default != null:
return $default(_that.id,_that.labelEn,_that.labelAr,_that.skills,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String labelEn,  String labelAr,  List<String> skills,  int order)  $default,) {final _that = this;
switch (_that) {
case _SkillGroupEntity():
return $default(_that.id,_that.labelEn,_that.labelAr,_that.skills,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String labelEn,  String labelAr,  List<String> skills,  int order)?  $default,) {final _that = this;
switch (_that) {
case _SkillGroupEntity() when $default != null:
return $default(_that.id,_that.labelEn,_that.labelAr,_that.skills,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SkillGroupEntity implements SkillGroupEntity {
  const _SkillGroupEntity({required this.id, this.labelEn = '', this.labelAr = '', final  List<String> skills = const <String>[], this.order = 0}): _skills = skills;
  factory _SkillGroupEntity.fromJson(Map<String, dynamic> json) => _$SkillGroupEntityFromJson(json);

@override final  String id;
@override@JsonKey() final  String labelEn;
@override@JsonKey() final  String labelAr;
 final  List<String> _skills;
@override@JsonKey() List<String> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}

@override@JsonKey() final  int order;

/// Create a copy of SkillGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SkillGroupEntityCopyWith<_SkillGroupEntity> get copyWith => __$SkillGroupEntityCopyWithImpl<_SkillGroupEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SkillGroupEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SkillGroupEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.labelEn, labelEn) || other.labelEn == labelEn)&&(identical(other.labelAr, labelAr) || other.labelAr == labelAr)&&const DeepCollectionEquality().equals(other._skills, _skills)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,labelEn,labelAr,const DeepCollectionEquality().hash(_skills),order);

@override
String toString() {
  return 'SkillGroupEntity(id: $id, labelEn: $labelEn, labelAr: $labelAr, skills: $skills, order: $order)';
}


}

/// @nodoc
abstract mixin class _$SkillGroupEntityCopyWith<$Res> implements $SkillGroupEntityCopyWith<$Res> {
  factory _$SkillGroupEntityCopyWith(_SkillGroupEntity value, $Res Function(_SkillGroupEntity) _then) = __$SkillGroupEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String labelEn, String labelAr, List<String> skills, int order
});




}
/// @nodoc
class __$SkillGroupEntityCopyWithImpl<$Res>
    implements _$SkillGroupEntityCopyWith<$Res> {
  __$SkillGroupEntityCopyWithImpl(this._self, this._then);

  final _SkillGroupEntity _self;
  final $Res Function(_SkillGroupEntity) _then;

/// Create a copy of SkillGroupEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? labelEn = null,Object? labelAr = null,Object? skills = null,Object? order = null,}) {
  return _then(_SkillGroupEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,labelEn: null == labelEn ? _self.labelEn : labelEn // ignore: cast_nullable_to_non_nullable
as String,labelAr: null == labelAr ? _self.labelAr : labelAr // ignore: cast_nullable_to_non_nullable
as String,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
