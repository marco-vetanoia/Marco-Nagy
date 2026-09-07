// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'personal_project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonalProject {

 String get id; String get title; String get titleAr; String get description; String get descriptionAr; List<String> get features; List<String> get featuresAr; String get category; String get categoryAr;/// Thumbnail used by the list row's hover reveal.
 ImageRef get cover;/// Composed showcase panels shown in the detail view.
 List<ShowcasePanel> get panels;/// Default background for this project's panels. Five screenshots normally
/// share one background, so it is stored once here rather than per panel.
 ShotBackground get showcaseBackground;/// Per-project hover accent, as a 6-digit RRGGBB hex string.
 String get accentHex; int get order;
/// Create a copy of PersonalProject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonalProjectCopyWith<PersonalProject> get copyWith => _$PersonalProjectCopyWithImpl<PersonalProject>(this as PersonalProject, _$identity);

  /// Serializes this PersonalProject to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonalProject&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionAr, descriptionAr) || other.descriptionAr == descriptionAr)&&const DeepCollectionEquality().equals(other.features, features)&&const DeepCollectionEquality().equals(other.featuresAr, featuresAr)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryAr, categoryAr) || other.categoryAr == categoryAr)&&(identical(other.cover, cover) || other.cover == cover)&&const DeepCollectionEquality().equals(other.panels, panels)&&(identical(other.showcaseBackground, showcaseBackground) || other.showcaseBackground == showcaseBackground)&&(identical(other.accentHex, accentHex) || other.accentHex == accentHex)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleAr,description,descriptionAr,const DeepCollectionEquality().hash(features),const DeepCollectionEquality().hash(featuresAr),category,categoryAr,cover,const DeepCollectionEquality().hash(panels),showcaseBackground,accentHex,order);

@override
String toString() {
  return 'PersonalProject(id: $id, title: $title, titleAr: $titleAr, description: $description, descriptionAr: $descriptionAr, features: $features, featuresAr: $featuresAr, category: $category, categoryAr: $categoryAr, cover: $cover, panels: $panels, showcaseBackground: $showcaseBackground, accentHex: $accentHex, order: $order)';
}


}

/// @nodoc
abstract mixin class $PersonalProjectCopyWith<$Res>  {
  factory $PersonalProjectCopyWith(PersonalProject value, $Res Function(PersonalProject) _then) = _$PersonalProjectCopyWithImpl;
@useResult
$Res call({
 String id, String title, String titleAr, String description, String descriptionAr, List<String> features, List<String> featuresAr, String category, String categoryAr, ImageRef cover, List<ShowcasePanel> panels, ShotBackground showcaseBackground, String accentHex, int order
});


$ImageRefCopyWith<$Res> get cover;$ShotBackgroundCopyWith<$Res> get showcaseBackground;

}
/// @nodoc
class _$PersonalProjectCopyWithImpl<$Res>
    implements $PersonalProjectCopyWith<$Res> {
  _$PersonalProjectCopyWithImpl(this._self, this._then);

  final PersonalProject _self;
  final $Res Function(PersonalProject) _then;

/// Create a copy of PersonalProject
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? titleAr = null,Object? description = null,Object? descriptionAr = null,Object? features = null,Object? featuresAr = null,Object? category = null,Object? categoryAr = null,Object? cover = null,Object? panels = null,Object? showcaseBackground = null,Object? accentHex = null,Object? order = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionAr: null == descriptionAr ? _self.descriptionAr : descriptionAr // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,featuresAr: null == featuresAr ? _self.featuresAr : featuresAr // ignore: cast_nullable_to_non_nullable
as List<String>,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,categoryAr: null == categoryAr ? _self.categoryAr : categoryAr // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as ImageRef,panels: null == panels ? _self.panels : panels // ignore: cast_nullable_to_non_nullable
as List<ShowcasePanel>,showcaseBackground: null == showcaseBackground ? _self.showcaseBackground : showcaseBackground // ignore: cast_nullable_to_non_nullable
as ShotBackground,accentHex: null == accentHex ? _self.accentHex : accentHex // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of PersonalProject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageRefCopyWith<$Res> get cover {
  
  return $ImageRefCopyWith<$Res>(_self.cover, (value) {
    return _then(_self.copyWith(cover: value));
  });
}/// Create a copy of PersonalProject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShotBackgroundCopyWith<$Res> get showcaseBackground {
  
  return $ShotBackgroundCopyWith<$Res>(_self.showcaseBackground, (value) {
    return _then(_self.copyWith(showcaseBackground: value));
  });
}
}


/// Adds pattern-matching-related methods to [PersonalProject].
extension PersonalProjectPatterns on PersonalProject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonalProject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonalProject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonalProject value)  $default,){
final _that = this;
switch (_that) {
case _PersonalProject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonalProject value)?  $default,){
final _that = this;
switch (_that) {
case _PersonalProject() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String titleAr,  String description,  String descriptionAr,  List<String> features,  List<String> featuresAr,  String category,  String categoryAr,  ImageRef cover,  List<ShowcasePanel> panels,  ShotBackground showcaseBackground,  String accentHex,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonalProject() when $default != null:
return $default(_that.id,_that.title,_that.titleAr,_that.description,_that.descriptionAr,_that.features,_that.featuresAr,_that.category,_that.categoryAr,_that.cover,_that.panels,_that.showcaseBackground,_that.accentHex,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String titleAr,  String description,  String descriptionAr,  List<String> features,  List<String> featuresAr,  String category,  String categoryAr,  ImageRef cover,  List<ShowcasePanel> panels,  ShotBackground showcaseBackground,  String accentHex,  int order)  $default,) {final _that = this;
switch (_that) {
case _PersonalProject():
return $default(_that.id,_that.title,_that.titleAr,_that.description,_that.descriptionAr,_that.features,_that.featuresAr,_that.category,_that.categoryAr,_that.cover,_that.panels,_that.showcaseBackground,_that.accentHex,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String titleAr,  String description,  String descriptionAr,  List<String> features,  List<String> featuresAr,  String category,  String categoryAr,  ImageRef cover,  List<ShowcasePanel> panels,  ShotBackground showcaseBackground,  String accentHex,  int order)?  $default,) {final _that = this;
switch (_that) {
case _PersonalProject() when $default != null:
return $default(_that.id,_that.title,_that.titleAr,_that.description,_that.descriptionAr,_that.features,_that.featuresAr,_that.category,_that.categoryAr,_that.cover,_that.panels,_that.showcaseBackground,_that.accentHex,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonalProject extends PersonalProject {
  const _PersonalProject({required this.id, required this.title, this.titleAr = '', this.description = '', this.descriptionAr = '', final  List<String> features = const <String>[], final  List<String> featuresAr = const <String>[], this.category = '', this.categoryAr = '', this.cover = const ImageRef(), final  List<ShowcasePanel> panels = const <ShowcasePanel>[], this.showcaseBackground = const ShotBackground(), this.accentHex = '4CC9F0', this.order = 0}): _features = features,_featuresAr = featuresAr,_panels = panels,super._();
  factory _PersonalProject.fromJson(Map<String, dynamic> json) => _$PersonalProjectFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey() final  String titleAr;
@override@JsonKey() final  String description;
@override@JsonKey() final  String descriptionAr;
 final  List<String> _features;
@override@JsonKey() List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

 final  List<String> _featuresAr;
@override@JsonKey() List<String> get featuresAr {
  if (_featuresAr is EqualUnmodifiableListView) return _featuresAr;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_featuresAr);
}

@override@JsonKey() final  String category;
@override@JsonKey() final  String categoryAr;
/// Thumbnail used by the list row's hover reveal.
@override@JsonKey() final  ImageRef cover;
/// Composed showcase panels shown in the detail view.
 final  List<ShowcasePanel> _panels;
/// Composed showcase panels shown in the detail view.
@override@JsonKey() List<ShowcasePanel> get panels {
  if (_panels is EqualUnmodifiableListView) return _panels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_panels);
}

/// Default background for this project's panels. Five screenshots normally
/// share one background, so it is stored once here rather than per panel.
@override@JsonKey() final  ShotBackground showcaseBackground;
/// Per-project hover accent, as a 6-digit RRGGBB hex string.
@override@JsonKey() final  String accentHex;
@override@JsonKey() final  int order;

/// Create a copy of PersonalProject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonalProjectCopyWith<_PersonalProject> get copyWith => __$PersonalProjectCopyWithImpl<_PersonalProject>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonalProjectToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonalProject&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleAr, titleAr) || other.titleAr == titleAr)&&(identical(other.description, description) || other.description == description)&&(identical(other.descriptionAr, descriptionAr) || other.descriptionAr == descriptionAr)&&const DeepCollectionEquality().equals(other._features, _features)&&const DeepCollectionEquality().equals(other._featuresAr, _featuresAr)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryAr, categoryAr) || other.categoryAr == categoryAr)&&(identical(other.cover, cover) || other.cover == cover)&&const DeepCollectionEquality().equals(other._panels, _panels)&&(identical(other.showcaseBackground, showcaseBackground) || other.showcaseBackground == showcaseBackground)&&(identical(other.accentHex, accentHex) || other.accentHex == accentHex)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleAr,description,descriptionAr,const DeepCollectionEquality().hash(_features),const DeepCollectionEquality().hash(_featuresAr),category,categoryAr,cover,const DeepCollectionEquality().hash(_panels),showcaseBackground,accentHex,order);

@override
String toString() {
  return 'PersonalProject(id: $id, title: $title, titleAr: $titleAr, description: $description, descriptionAr: $descriptionAr, features: $features, featuresAr: $featuresAr, category: $category, categoryAr: $categoryAr, cover: $cover, panels: $panels, showcaseBackground: $showcaseBackground, accentHex: $accentHex, order: $order)';
}


}

/// @nodoc
abstract mixin class _$PersonalProjectCopyWith<$Res> implements $PersonalProjectCopyWith<$Res> {
  factory _$PersonalProjectCopyWith(_PersonalProject value, $Res Function(_PersonalProject) _then) = __$PersonalProjectCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String titleAr, String description, String descriptionAr, List<String> features, List<String> featuresAr, String category, String categoryAr, ImageRef cover, List<ShowcasePanel> panels, ShotBackground showcaseBackground, String accentHex, int order
});


@override $ImageRefCopyWith<$Res> get cover;@override $ShotBackgroundCopyWith<$Res> get showcaseBackground;

}
/// @nodoc
class __$PersonalProjectCopyWithImpl<$Res>
    implements _$PersonalProjectCopyWith<$Res> {
  __$PersonalProjectCopyWithImpl(this._self, this._then);

  final _PersonalProject _self;
  final $Res Function(_PersonalProject) _then;

/// Create a copy of PersonalProject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? titleAr = null,Object? description = null,Object? descriptionAr = null,Object? features = null,Object? featuresAr = null,Object? category = null,Object? categoryAr = null,Object? cover = null,Object? panels = null,Object? showcaseBackground = null,Object? accentHex = null,Object? order = null,}) {
  return _then(_PersonalProject(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleAr: null == titleAr ? _self.titleAr : titleAr // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,descriptionAr: null == descriptionAr ? _self.descriptionAr : descriptionAr // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,featuresAr: null == featuresAr ? _self._featuresAr : featuresAr // ignore: cast_nullable_to_non_nullable
as List<String>,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,categoryAr: null == categoryAr ? _self.categoryAr : categoryAr // ignore: cast_nullable_to_non_nullable
as String,cover: null == cover ? _self.cover : cover // ignore: cast_nullable_to_non_nullable
as ImageRef,panels: null == panels ? _self._panels : panels // ignore: cast_nullable_to_non_nullable
as List<ShowcasePanel>,showcaseBackground: null == showcaseBackground ? _self.showcaseBackground : showcaseBackground // ignore: cast_nullable_to_non_nullable
as ShotBackground,accentHex: null == accentHex ? _self.accentHex : accentHex // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of PersonalProject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ImageRefCopyWith<$Res> get cover {
  
  return $ImageRefCopyWith<$Res>(_self.cover, (value) {
    return _then(_self.copyWith(cover: value));
  });
}/// Create a copy of PersonalProject
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShotBackgroundCopyWith<$Res> get showcaseBackground {
  
  return $ShotBackgroundCopyWith<$Res>(_self.showcaseBackground, (value) {
    return _then(_self.copyWith(showcaseBackground: value));
  });
}
}

// dart format on
