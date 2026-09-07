// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SectionDefinition {

 String get id; SectionType get type; SectionKind get kind; String get titleEn; String get titleAr; int get order; bool get visible;
/// Create a copy of SectionDefinition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionDefinitionCopyWith<SectionDefinition> get copyWith => _$SectionDefinitionCopyWithImpl<SectionDefinition>(this as SectionDefinition, _$identity);

  /// Serializes this SectionDefinition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionDefinition&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.order, order) || other.order == order)&&(identical(other.visible, visible) || other.visible == visible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,kind,titleEn,titleAr,order,visible);

@override
String toString() {
  return 'SectionDefinition(id: $id, type: $type, kind: $kind, titleEn: $titleEn, titleAr: $titleAr, order: $order, visible: $visible)';
}


}

/// @nodoc
abstract mixin class $SectionDefinitionCopyWith<$Res>  {
  factory $SectionDefinitionCopyWith(SectionDefinition value, $Res Function(SectionDefinition) _then) = _$SectionDefinitionCopyWithImpl;
@useResult
$Res call({
 String id, SectionType type, SectionKind kind, String titleEn, String titleAr, int order, bool visible
});




}
/// @nodoc
class _$SectionDefinitionCopyWithImpl<$Res>
    implements $SectionDefinitionCopyWith<$Res> {
  _$SectionDefinitionCopyWithImpl(this._self, this._then);

  final SectionDefinition _self;
  final $Res Function(SectionDefinition) _then;

/// Create a copy of SectionDefinition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? kind = null,Object? titleEn = null,Object? titleAr = null,Object? order = null,Object? visible = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SectionType,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as SectionKind,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SectionDefinition].
extension SectionDefinitionPatterns on SectionDefinition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionDefinition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionDefinition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionDefinition value)  $default,){
final _that = this;
switch (_that) {
case _SectionDefinition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionDefinition value)?  $default,){
final _that = this;
switch (_that) {
case _SectionDefinition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  SectionType type,  SectionKind kind,  String titleEn,  String titleAr,  int order,  bool visible)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionDefinition() when $default != null:
return $default(_that.id,_that.type,_that.kind,_that.titleEn,_that.titleAr,_that.order,_that.visible);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  SectionType type,  SectionKind kind,  String titleEn,  String titleAr,  int order,  bool visible)  $default,) {final _that = this;
switch (_that) {
case _SectionDefinition():
return $default(_that.id,_that.type,_that.kind,_that.titleEn,_that.titleAr,_that.order,_that.visible);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  SectionType type,  SectionKind kind,  String titleEn,  String titleAr,  int order,  bool visible)?  $default,) {final _that = this;
switch (_that) {
case _SectionDefinition() when $default != null:
return $default(_that.id,_that.type,_that.kind,_that.titleEn,_that.titleAr,_that.order,_that.visible);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SectionDefinition extends SectionDefinition {
  const _SectionDefinition({required this.id, required this.type, this.kind = SectionKind.builtIn, this.titleEn = '', this.titleAr = '', this.order = 0, this.visible = true}): super._();
  factory _SectionDefinition.fromJson(Map<String, dynamic> json) => _$SectionDefinitionFromJson(json);

@override final  String id;
@override final  SectionType type;
@override@JsonKey() final  SectionKind kind;
@override@JsonKey() final  String titleEn;
@override@JsonKey() final  String titleAr;
@override@JsonKey() final  int order;
@override@JsonKey() final  bool visible;

/// Create a copy of SectionDefinition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionDefinitionCopyWith<_SectionDefinition> get copyWith => __$SectionDefinitionCopyWithImpl<_SectionDefinition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SectionDefinitionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionDefinition&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.order, order) || other.order == order)&&(identical(other.visible, visible) || other.visible == visible));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,kind,titleEn,titleAr,order,visible);

@override
String toString() {
  return 'SectionDefinition(id: $id, type: $type, kind: $kind, titleEn: $titleEn, titleAr: $titleAr, order: $order, visible: $visible)';
}


}

/// @nodoc
abstract mixin class _$SectionDefinitionCopyWith<$Res> implements $SectionDefinitionCopyWith<$Res> {
  factory _$SectionDefinitionCopyWith(_SectionDefinition value, $Res Function(_SectionDefinition) _then) = __$SectionDefinitionCopyWithImpl;
@override @useResult
$Res call({
 String id, SectionType type, SectionKind kind, String titleEn, String titleAr, int order, bool visible
});




}
/// @nodoc
class __$SectionDefinitionCopyWithImpl<$Res>
    implements _$SectionDefinitionCopyWith<$Res> {
  __$SectionDefinitionCopyWithImpl(this._self, this._then);

  final _SectionDefinition _self;
  final $Res Function(_SectionDefinition) _then;

/// Create a copy of SectionDefinition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? kind = null,Object? titleEn = null,Object? titleAr = null,Object? order = null,Object? visible = null,}) {
  return _then(_SectionDefinition(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as SectionType,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as SectionKind,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,visible: null == visible ? _self.visible : visible // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
