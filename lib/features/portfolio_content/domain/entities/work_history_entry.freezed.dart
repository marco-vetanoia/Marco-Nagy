// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_history_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkHistoryEntry {

 String get id; String get company; String get role; String get roleAr; String get startDate; String get endDate; String get location; String get locationAr; List<String> get bullets; List<String> get bulletsAr; int get order;
/// Create a copy of WorkHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkHistoryEntryCopyWith<WorkHistoryEntry> get copyWith => _$WorkHistoryEntryCopyWithImpl<WorkHistoryEntry>(this as WorkHistoryEntry, _$identity);

  /// Serializes this WorkHistoryEntry to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkHistoryEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.role, role) || other.role == role)&&(identical(other.roleAr, roleAr) || other.roleAr == roleAr)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationAr, locationAr) || other.locationAr == locationAr)&&const DeepCollectionEquality().equals(other.bullets, bullets)&&const DeepCollectionEquality().equals(other.bulletsAr, bulletsAr)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,role,roleAr,startDate,endDate,location,locationAr,const DeepCollectionEquality().hash(bullets),const DeepCollectionEquality().hash(bulletsAr),order);

@override
String toString() {
  return 'WorkHistoryEntry(id: $id, company: $company, role: $role, roleAr: $roleAr, startDate: $startDate, endDate: $endDate, location: $location, locationAr: $locationAr, bullets: $bullets, bulletsAr: $bulletsAr, order: $order)';
}


}

/// @nodoc
abstract mixin class $WorkHistoryEntryCopyWith<$Res>  {
  factory $WorkHistoryEntryCopyWith(WorkHistoryEntry value, $Res Function(WorkHistoryEntry) _then) = _$WorkHistoryEntryCopyWithImpl;
@useResult
$Res call({
 String id, String company, String role, String roleAr, String startDate, String endDate, String location, String locationAr, List<String> bullets, List<String> bulletsAr, int order
});




}
/// @nodoc
class _$WorkHistoryEntryCopyWithImpl<$Res>
    implements $WorkHistoryEntryCopyWith<$Res> {
  _$WorkHistoryEntryCopyWithImpl(this._self, this._then);

  final WorkHistoryEntry _self;
  final $Res Function(WorkHistoryEntry) _then;

/// Create a copy of WorkHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? role = null,Object? roleAr = null,Object? startDate = null,Object? endDate = null,Object? location = null,Object? locationAr = null,Object? bullets = null,Object? bulletsAr = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,roleAr: null == roleAr ? _self.roleAr : roleAr // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,locationAr: null == locationAr ? _self.locationAr : locationAr // ignore: cast_nullable_to_non_nullable
as String,bullets: null == bullets ? _self.bullets : bullets // ignore: cast_nullable_to_non_nullable
as List<String>,bulletsAr: null == bulletsAr ? _self.bulletsAr : bulletsAr // ignore: cast_nullable_to_non_nullable
as List<String>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkHistoryEntry].
extension WorkHistoryEntryPatterns on WorkHistoryEntry {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkHistoryEntry value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkHistoryEntry value)  $default,){
final _that = this;
switch (_that) {
case _WorkHistoryEntry():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkHistoryEntry value)?  $default,){
final _that = this;
switch (_that) {
case _WorkHistoryEntry() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String company,  String role,  String roleAr,  String startDate,  String endDate,  String location,  String locationAr,  List<String> bullets,  List<String> bulletsAr,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkHistoryEntry() when $default != null:
return $default(_that.id,_that.company,_that.role,_that.roleAr,_that.startDate,_that.endDate,_that.location,_that.locationAr,_that.bullets,_that.bulletsAr,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String company,  String role,  String roleAr,  String startDate,  String endDate,  String location,  String locationAr,  List<String> bullets,  List<String> bulletsAr,  int order)  $default,) {final _that = this;
switch (_that) {
case _WorkHistoryEntry():
return $default(_that.id,_that.company,_that.role,_that.roleAr,_that.startDate,_that.endDate,_that.location,_that.locationAr,_that.bullets,_that.bulletsAr,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String company,  String role,  String roleAr,  String startDate,  String endDate,  String location,  String locationAr,  List<String> bullets,  List<String> bulletsAr,  int order)?  $default,) {final _that = this;
switch (_that) {
case _WorkHistoryEntry() when $default != null:
return $default(_that.id,_that.company,_that.role,_that.roleAr,_that.startDate,_that.endDate,_that.location,_that.locationAr,_that.bullets,_that.bulletsAr,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkHistoryEntry extends WorkHistoryEntry {
  const _WorkHistoryEntry({required this.id, required this.company, this.role = '', this.roleAr = '', this.startDate = '', this.endDate = '', this.location = '', this.locationAr = '', final  List<String> bullets = const <String>[], final  List<String> bulletsAr = const <String>[], this.order = 0}): _bullets = bullets,_bulletsAr = bulletsAr,super._();
  factory _WorkHistoryEntry.fromJson(Map<String, dynamic> json) => _$WorkHistoryEntryFromJson(json);

@override final  String id;
@override final  String company;
@override@JsonKey() final  String role;
@override@JsonKey() final  String roleAr;
@override@JsonKey() final  String startDate;
@override@JsonKey() final  String endDate;
@override@JsonKey() final  String location;
@override@JsonKey() final  String locationAr;
 final  List<String> _bullets;
@override@JsonKey() List<String> get bullets {
  if (_bullets is EqualUnmodifiableListView) return _bullets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bullets);
}

 final  List<String> _bulletsAr;
@override@JsonKey() List<String> get bulletsAr {
  if (_bulletsAr is EqualUnmodifiableListView) return _bulletsAr;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bulletsAr);
}

@override@JsonKey() final  int order;

/// Create a copy of WorkHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkHistoryEntryCopyWith<_WorkHistoryEntry> get copyWith => __$WorkHistoryEntryCopyWithImpl<_WorkHistoryEntry>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkHistoryEntryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkHistoryEntry&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.role, role) || other.role == role)&&(identical(other.roleAr, roleAr) || other.roleAr == roleAr)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationAr, locationAr) || other.locationAr == locationAr)&&const DeepCollectionEquality().equals(other._bullets, _bullets)&&const DeepCollectionEquality().equals(other._bulletsAr, _bulletsAr)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,role,roleAr,startDate,endDate,location,locationAr,const DeepCollectionEquality().hash(_bullets),const DeepCollectionEquality().hash(_bulletsAr),order);

@override
String toString() {
  return 'WorkHistoryEntry(id: $id, company: $company, role: $role, roleAr: $roleAr, startDate: $startDate, endDate: $endDate, location: $location, locationAr: $locationAr, bullets: $bullets, bulletsAr: $bulletsAr, order: $order)';
}


}

/// @nodoc
abstract mixin class _$WorkHistoryEntryCopyWith<$Res> implements $WorkHistoryEntryCopyWith<$Res> {
  factory _$WorkHistoryEntryCopyWith(_WorkHistoryEntry value, $Res Function(_WorkHistoryEntry) _then) = __$WorkHistoryEntryCopyWithImpl;
@override @useResult
$Res call({
 String id, String company, String role, String roleAr, String startDate, String endDate, String location, String locationAr, List<String> bullets, List<String> bulletsAr, int order
});




}
/// @nodoc
class __$WorkHistoryEntryCopyWithImpl<$Res>
    implements _$WorkHistoryEntryCopyWith<$Res> {
  __$WorkHistoryEntryCopyWithImpl(this._self, this._then);

  final _WorkHistoryEntry _self;
  final $Res Function(_WorkHistoryEntry) _then;

/// Create a copy of WorkHistoryEntry
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? role = null,Object? roleAr = null,Object? startDate = null,Object? endDate = null,Object? location = null,Object? locationAr = null,Object? bullets = null,Object? bulletsAr = null,Object? order = null,}) {
  return _then(_WorkHistoryEntry(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,roleAr: null == roleAr ? _self.roleAr : roleAr // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,locationAr: null == locationAr ? _self.locationAr : locationAr // ignore: cast_nullable_to_non_nullable
as String,bullets: null == bullets ? _self._bullets : bullets // ignore: cast_nullable_to_non_nullable
as List<String>,bulletsAr: null == bulletsAr ? _self._bulletsAr : bulletsAr // ignore: cast_nullable_to_non_nullable
as List<String>,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
