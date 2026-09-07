// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_section_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomSectionItem {

 String get id; String get sectionId; String get titleEn; String get titleAr; String get subtitleEn; String get subtitleAr; String get descriptionEn; String get descriptionAr; List<String> get bulletsEn; List<String> get bulletsAr; String get tagEn; String get tagAr; String get dateStart; String get dateEnd; String get year; List<ImageRef> get images;/// Hover accent for listRows, as a 6-digit RRGGBB hex string.
 String get accentHex;/// Optional outward link opened in a new tab.
 String get linkUrl; int get order;
/// Create a copy of CustomSectionItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomSectionItemCopyWith<CustomSectionItem> get copyWith => _$CustomSectionItemCopyWithImpl<CustomSectionItem>(this as CustomSectionItem, _$identity);

  /// Serializes this CustomSectionItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomSectionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.subtitleEn, subtitleEn) || other.subtitleEn == subtitleEn)&&(identical(other.subtitleAr, subtitleAr) || other.subtitleAr == subtitleAr)&&(identical(other.descriptionEn, descriptionEn) || other.descriptionEn == descriptionEn)&&(identical(other.descriptionAr, descriptionAr) || other.descriptionAr == descriptionAr)&&const DeepCollectionEquality().equals(other.bulletsEn, bulletsEn)&&const DeepCollectionEquality().equals(other.bulletsAr, bulletsAr)&&(identical(other.tagEn, tagEn) || other.tagEn == tagEn)&&(identical(other.tagAr, tagAr) || other.tagAr == tagAr)&&(identical(other.dateStart, dateStart) || other.dateStart == dateStart)&&(identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd)&&(identical(other.year, year) || other.year == year)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.accentHex, accentHex) || other.accentHex == accentHex)&&(identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sectionId,titleEn,titleAr,subtitleEn,subtitleAr,descriptionEn,descriptionAr,const DeepCollectionEquality().hash(bulletsEn),const DeepCollectionEquality().hash(bulletsAr),tagEn,tagAr,dateStart,dateEnd,year,const DeepCollectionEquality().hash(images),accentHex,linkUrl,order]);

@override
String toString() {
  return 'CustomSectionItem(id: $id, sectionId: $sectionId, titleEn: $titleEn, titleAr: $titleAr, subtitleEn: $subtitleEn, subtitleAr: $subtitleAr, descriptionEn: $descriptionEn, descriptionAr: $descriptionAr, bulletsEn: $bulletsEn, bulletsAr: $bulletsAr, tagEn: $tagEn, tagAr: $tagAr, dateStart: $dateStart, dateEnd: $dateEnd, year: $year, images: $images, accentHex: $accentHex, linkUrl: $linkUrl, order: $order)';
}


}

/// @nodoc
abstract mixin class $CustomSectionItemCopyWith<$Res>  {
  factory $CustomSectionItemCopyWith(CustomSectionItem value, $Res Function(CustomSectionItem) _then) = _$CustomSectionItemCopyWithImpl;
@useResult
$Res call({
 String id, String sectionId, String titleEn, String titleAr, String subtitleEn, String subtitleAr, String descriptionEn, String descriptionAr, List<String> bulletsEn, List<String> bulletsAr, String tagEn, String tagAr, String dateStart, String dateEnd, String year, List<ImageRef> images, String accentHex, String linkUrl, int order
});




}
/// @nodoc
class _$CustomSectionItemCopyWithImpl<$Res>
    implements $CustomSectionItemCopyWith<$Res> {
  _$CustomSectionItemCopyWithImpl(this._self, this._then);

  final CustomSectionItem _self;
  final $Res Function(CustomSectionItem) _then;

/// Create a copy of CustomSectionItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sectionId = null,Object? titleEn = null,Object? titleAr = null,Object? subtitleEn = null,Object? subtitleAr = null,Object? descriptionEn = null,Object? descriptionAr = null,Object? bulletsEn = null,Object? bulletsAr = null,Object? tagEn = null,Object? tagAr = null,Object? dateStart = null,Object? dateEnd = null,Object? year = null,Object? images = null,Object? accentHex = null,Object? linkUrl = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,subtitleEn: null == subtitleEn ? _self.subtitleEn : subtitleEn // ignore: cast_nullable_to_non_nullable
as String,subtitleAr: null == subtitleAr ? _self.subtitleAr : subtitleAr // ignore: cast_nullable_to_non_nullable
as String,descriptionEn: null == descriptionEn ? _self.descriptionEn : descriptionEn // ignore: cast_nullable_to_non_nullable
as String,descriptionAr: null == descriptionAr ? _self.descriptionAr : descriptionAr // ignore: cast_nullable_to_non_nullable
as String,bulletsEn: null == bulletsEn ? _self.bulletsEn : bulletsEn // ignore: cast_nullable_to_non_nullable
as List<String>,bulletsAr: null == bulletsAr ? _self.bulletsAr : bulletsAr // ignore: cast_nullable_to_non_nullable
as List<String>,tagEn: null == tagEn ? _self.tagEn : tagEn // ignore: cast_nullable_to_non_nullable
as String,tagAr: null == tagAr ? _self.tagAr : tagAr // ignore: cast_nullable_to_non_nullable
as String,dateStart: null == dateStart ? _self.dateStart : dateStart // ignore: cast_nullable_to_non_nullable
as String,dateEnd: null == dateEnd ? _self.dateEnd : dateEnd // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ImageRef>,accentHex: null == accentHex ? _self.accentHex : accentHex // ignore: cast_nullable_to_non_nullable
as String,linkUrl: null == linkUrl ? _self.linkUrl : linkUrl // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomSectionItem].
extension CustomSectionItemPatterns on CustomSectionItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomSectionItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomSectionItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomSectionItem value)  $default,){
final _that = this;
switch (_that) {
case _CustomSectionItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomSectionItem value)?  $default,){
final _that = this;
switch (_that) {
case _CustomSectionItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String sectionId,  String titleEn,  String titleAr,  String subtitleEn,  String subtitleAr,  String descriptionEn,  String descriptionAr,  List<String> bulletsEn,  List<String> bulletsAr,  String tagEn,  String tagAr,  String dateStart,  String dateEnd,  String year,  List<ImageRef> images,  String accentHex,  String linkUrl,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomSectionItem() when $default != null:
return $default(_that.id,_that.sectionId,_that.titleEn,_that.titleAr,_that.subtitleEn,_that.subtitleAr,_that.descriptionEn,_that.descriptionAr,_that.bulletsEn,_that.bulletsAr,_that.tagEn,_that.tagAr,_that.dateStart,_that.dateEnd,_that.year,_that.images,_that.accentHex,_that.linkUrl,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String sectionId,  String titleEn,  String titleAr,  String subtitleEn,  String subtitleAr,  String descriptionEn,  String descriptionAr,  List<String> bulletsEn,  List<String> bulletsAr,  String tagEn,  String tagAr,  String dateStart,  String dateEnd,  String year,  List<ImageRef> images,  String accentHex,  String linkUrl,  int order)  $default,) {final _that = this;
switch (_that) {
case _CustomSectionItem():
return $default(_that.id,_that.sectionId,_that.titleEn,_that.titleAr,_that.subtitleEn,_that.subtitleAr,_that.descriptionEn,_that.descriptionAr,_that.bulletsEn,_that.bulletsAr,_that.tagEn,_that.tagAr,_that.dateStart,_that.dateEnd,_that.year,_that.images,_that.accentHex,_that.linkUrl,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String sectionId,  String titleEn,  String titleAr,  String subtitleEn,  String subtitleAr,  String descriptionEn,  String descriptionAr,  List<String> bulletsEn,  List<String> bulletsAr,  String tagEn,  String tagAr,  String dateStart,  String dateEnd,  String year,  List<ImageRef> images,  String accentHex,  String linkUrl,  int order)?  $default,) {final _that = this;
switch (_that) {
case _CustomSectionItem() when $default != null:
return $default(_that.id,_that.sectionId,_that.titleEn,_that.titleAr,_that.subtitleEn,_that.subtitleAr,_that.descriptionEn,_that.descriptionAr,_that.bulletsEn,_that.bulletsAr,_that.tagEn,_that.tagAr,_that.dateStart,_that.dateEnd,_that.year,_that.images,_that.accentHex,_that.linkUrl,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomSectionItem extends CustomSectionItem {
  const _CustomSectionItem({required this.id, required this.sectionId, this.titleEn = '', this.titleAr = '', this.subtitleEn = '', this.subtitleAr = '', this.descriptionEn = '', this.descriptionAr = '', final  List<String> bulletsEn = const <String>[], final  List<String> bulletsAr = const <String>[], this.tagEn = '', this.tagAr = '', this.dateStart = '', this.dateEnd = '', this.year = '', final  List<ImageRef> images = const <ImageRef>[], this.accentHex = '4CC9F0', this.linkUrl = '', this.order = 0}): _bulletsEn = bulletsEn,_bulletsAr = bulletsAr,_images = images,super._();
  factory _CustomSectionItem.fromJson(Map<String, dynamic> json) => _$CustomSectionItemFromJson(json);

@override final  String id;
@override final  String sectionId;
@override@JsonKey() final  String titleEn;
@override@JsonKey() final  String titleAr;
@override@JsonKey() final  String subtitleEn;
@override@JsonKey() final  String subtitleAr;
@override@JsonKey() final  String descriptionEn;
@override@JsonKey() final  String descriptionAr;
 final  List<String> _bulletsEn;
@override@JsonKey() List<String> get bulletsEn {
  if (_bulletsEn is EqualUnmodifiableListView) return _bulletsEn;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bulletsEn);
}

 final  List<String> _bulletsAr;
@override@JsonKey() List<String> get bulletsAr {
  if (_bulletsAr is EqualUnmodifiableListView) return _bulletsAr;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bulletsAr);
}

@override@JsonKey() final  String tagEn;
@override@JsonKey() final  String tagAr;
@override@JsonKey() final  String dateStart;
@override@JsonKey() final  String dateEnd;
@override@JsonKey() final  String year;
 final  List<ImageRef> _images;
@override@JsonKey() List<ImageRef> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

/// Hover accent for listRows, as a 6-digit RRGGBB hex string.
@override@JsonKey() final  String accentHex;
/// Optional outward link opened in a new tab.
@override@JsonKey() final  String linkUrl;
@override@JsonKey() final  int order;

/// Create a copy of CustomSectionItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomSectionItemCopyWith<_CustomSectionItem> get copyWith => __$CustomSectionItemCopyWithImpl<_CustomSectionItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomSectionItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomSectionItem&&(identical(other.id, id) || other.id == id)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId)&&(identical(other.titleEn, titleEn) || other.titleEn == titleEn)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.subtitleEn, subtitleEn) || other.subtitleEn == subtitleEn)&&(identical(other.subtitleAr, subtitleAr) || other.subtitleAr == subtitleAr)&&(identical(other.descriptionEn, descriptionEn) || other.descriptionEn == descriptionEn)&&(identical(other.descriptionAr, descriptionAr) || other.descriptionAr == descriptionAr)&&const DeepCollectionEquality().equals(other._bulletsEn, _bulletsEn)&&const DeepCollectionEquality().equals(other._bulletsAr, _bulletsAr)&&(identical(other.tagEn, tagEn) || other.tagEn == tagEn)&&(identical(other.tagAr, tagAr) || other.tagAr == tagAr)&&(identical(other.dateStart, dateStart) || other.dateStart == dateStart)&&(identical(other.dateEnd, dateEnd) || other.dateEnd == dateEnd)&&(identical(other.year, year) || other.year == year)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.accentHex, accentHex) || other.accentHex == accentHex)&&(identical(other.linkUrl, linkUrl) || other.linkUrl == linkUrl)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,sectionId,titleEn,titleAr,subtitleEn,subtitleAr,descriptionEn,descriptionAr,const DeepCollectionEquality().hash(_bulletsEn),const DeepCollectionEquality().hash(_bulletsAr),tagEn,tagAr,dateStart,dateEnd,year,const DeepCollectionEquality().hash(_images),accentHex,linkUrl,order]);

@override
String toString() {
  return 'CustomSectionItem(id: $id, sectionId: $sectionId, titleEn: $titleEn, titleAr: $titleAr, subtitleEn: $subtitleEn, subtitleAr: $subtitleAr, descriptionEn: $descriptionEn, descriptionAr: $descriptionAr, bulletsEn: $bulletsEn, bulletsAr: $bulletsAr, tagEn: $tagEn, tagAr: $tagAr, dateStart: $dateStart, dateEnd: $dateEnd, year: $year, images: $images, accentHex: $accentHex, linkUrl: $linkUrl, order: $order)';
}


}

/// @nodoc
abstract mixin class _$CustomSectionItemCopyWith<$Res> implements $CustomSectionItemCopyWith<$Res> {
  factory _$CustomSectionItemCopyWith(_CustomSectionItem value, $Res Function(_CustomSectionItem) _then) = __$CustomSectionItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String sectionId, String titleEn, String titleAr, String subtitleEn, String subtitleAr, String descriptionEn, String descriptionAr, List<String> bulletsEn, List<String> bulletsAr, String tagEn, String tagAr, String dateStart, String dateEnd, String year, List<ImageRef> images, String accentHex, String linkUrl, int order
});




}
/// @nodoc
class __$CustomSectionItemCopyWithImpl<$Res>
    implements _$CustomSectionItemCopyWith<$Res> {
  __$CustomSectionItemCopyWithImpl(this._self, this._then);

  final _CustomSectionItem _self;
  final $Res Function(_CustomSectionItem) _then;

/// Create a copy of CustomSectionItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sectionId = null,Object? titleEn = null,Object? titleAr = null,Object? subtitleEn = null,Object? subtitleAr = null,Object? descriptionEn = null,Object? descriptionAr = null,Object? bulletsEn = null,Object? bulletsAr = null,Object? tagEn = null,Object? tagAr = null,Object? dateStart = null,Object? dateEnd = null,Object? year = null,Object? images = null,Object? accentHex = null,Object? linkUrl = null,Object? order = null,}) {
  return _then(_CustomSectionItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sectionId: null == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String,titleEn: null == titleEn ? _self.titleEn : titleEn // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,subtitleEn: null == subtitleEn ? _self.subtitleEn : subtitleEn // ignore: cast_nullable_to_non_nullable
as String,subtitleAr: null == subtitleAr ? _self.subtitleAr : subtitleAr // ignore: cast_nullable_to_non_nullable
as String,descriptionEn: null == descriptionEn ? _self.descriptionEn : descriptionEn // ignore: cast_nullable_to_non_nullable
as String,descriptionAr: null == descriptionAr ? _self.descriptionAr : descriptionAr // ignore: cast_nullable_to_non_nullable
as String,bulletsEn: null == bulletsEn ? _self._bulletsEn : bulletsEn // ignore: cast_nullable_to_non_nullable
as List<String>,bulletsAr: null == bulletsAr ? _self._bulletsAr : bulletsAr // ignore: cast_nullable_to_non_nullable
as List<String>,tagEn: null == tagEn ? _self.tagEn : tagEn // ignore: cast_nullable_to_non_nullable
as String,tagAr: null == tagAr ? _self.tagAr : tagAr // ignore: cast_nullable_to_non_nullable
as String,dateStart: null == dateStart ? _self.dateStart : dateStart // ignore: cast_nullable_to_non_nullable
as String,dateEnd: null == dateEnd ? _self.dateEnd : dateEnd // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ImageRef>,accentHex: null == accentHex ? _self.accentHex : accentHex // ignore: cast_nullable_to_non_nullable
as String,linkUrl: null == linkUrl ? _self.linkUrl : linkUrl // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
