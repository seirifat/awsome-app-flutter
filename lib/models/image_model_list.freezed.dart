// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_model_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageModelList _$ImageModelListFromJson(Map<String, dynamic> json) {
  return _ImageModelList.fromJson(json);
}

/// @nodoc
mixin _$ImageModelList {
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: "photos")
  List<Photo>? get photos => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int? get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: "next_page")
  String? get nextPage => throw _privateConstructorUsedError;

  /// Serializes this ImageModelList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageModelListCopyWith<ImageModelList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelListCopyWith<$Res> {
  factory $ImageModelListCopyWith(
          ImageModelList value, $Res Function(ImageModelList) then) =
      _$ImageModelListCopyWithImpl<$Res, ImageModelList>;
  @useResult
  $Res call(
      {@JsonKey(name: "page") int? page,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "photos") List<Photo>? photos,
      @JsonKey(name: "total_results") int? totalResults,
      @JsonKey(name: "next_page") String? nextPage});
}

/// @nodoc
class _$ImageModelListCopyWithImpl<$Res, $Val extends ImageModelList>
    implements $ImageModelListCopyWith<$Res> {
  _$ImageModelListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? photos = freezed,
    Object? totalResults = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageModelListImplCopyWith<$Res>
    implements $ImageModelListCopyWith<$Res> {
  factory _$$ImageModelListImplCopyWith(_$ImageModelListImpl value,
          $Res Function(_$ImageModelListImpl) then) =
      __$$ImageModelListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page") int? page,
      @JsonKey(name: "per_page") int? perPage,
      @JsonKey(name: "photos") List<Photo>? photos,
      @JsonKey(name: "total_results") int? totalResults,
      @JsonKey(name: "next_page") String? nextPage});
}

/// @nodoc
class __$$ImageModelListImplCopyWithImpl<$Res>
    extends _$ImageModelListCopyWithImpl<$Res, _$ImageModelListImpl>
    implements _$$ImageModelListImplCopyWith<$Res> {
  __$$ImageModelListImplCopyWithImpl(
      _$ImageModelListImpl _value, $Res Function(_$ImageModelListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageModelList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? perPage = freezed,
    Object? photos = freezed,
    Object? totalResults = freezed,
    Object? nextPage = freezed,
  }) {
    return _then(_$ImageModelListImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModelListImpl implements _ImageModelList {
  const _$ImageModelListImpl(
      {@JsonKey(name: "page") this.page,
      @JsonKey(name: "per_page") this.perPage,
      @JsonKey(name: "photos") final List<Photo>? photos,
      @JsonKey(name: "total_results") this.totalResults,
      @JsonKey(name: "next_page") this.nextPage})
      : _photos = photos;

  factory _$ImageModelListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelListImplFromJson(json);

  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  final List<Photo>? _photos;
  @override
  @JsonKey(name: "photos")
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total_results")
  final int? totalResults;
  @override
  @JsonKey(name: "next_page")
  final String? nextPage;

  @override
  String toString() {
    return 'ImageModelList(page: $page, perPage: $perPage, photos: $photos, totalResults: $totalResults, nextPage: $nextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelListImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, page, perPage,
      const DeepCollectionEquality().hash(_photos), totalResults, nextPage);

  /// Create a copy of ImageModelList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelListImplCopyWith<_$ImageModelListImpl> get copyWith =>
      __$$ImageModelListImplCopyWithImpl<_$ImageModelListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelListImplToJson(
      this,
    );
  }
}

abstract class _ImageModelList implements ImageModelList {
  const factory _ImageModelList(
          {@JsonKey(name: "page") final int? page,
          @JsonKey(name: "per_page") final int? perPage,
          @JsonKey(name: "photos") final List<Photo>? photos,
          @JsonKey(name: "total_results") final int? totalResults,
          @JsonKey(name: "next_page") final String? nextPage}) =
      _$ImageModelListImpl;

  factory _ImageModelList.fromJson(Map<String, dynamic> json) =
      _$ImageModelListImpl.fromJson;

  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  @JsonKey(name: "photos")
  List<Photo>? get photos;
  @override
  @JsonKey(name: "total_results")
  int? get totalResults;
  @override
  @JsonKey(name: "next_page")
  String? get nextPage;

  /// Create a copy of ImageModelList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageModelListImplCopyWith<_$ImageModelListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return _Photo.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "photographer")
  String? get photographer => throw _privateConstructorUsedError;
  @JsonKey(name: "photographer_url")
  String? get photographerUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "photographer_id")
  int? get photographerId => throw _privateConstructorUsedError;
  @JsonKey(name: "avg_color")
  String? get avgColor => throw _privateConstructorUsedError;
  @JsonKey(name: "src")
  Src? get src => throw _privateConstructorUsedError;
  @JsonKey(name: "liked")
  bool? get liked => throw _privateConstructorUsedError;
  @JsonKey(name: "alt")
  String? get alt => throw _privateConstructorUsedError;

  /// Serializes this Photo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) =
      _$PhotoCopyWithImpl<$Res, Photo>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "photographer") String? photographer,
      @JsonKey(name: "photographer_url") String? photographerUrl,
      @JsonKey(name: "photographer_id") int? photographerId,
      @JsonKey(name: "avg_color") String? avgColor,
      @JsonKey(name: "src") Src? src,
      @JsonKey(name: "liked") bool? liked,
      @JsonKey(name: "alt") String? alt});

  $SrcCopyWith<$Res>? get src;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? photographerId = freezed,
    Object? avgColor = freezed,
    Object? src = freezed,
    Object? liked = freezed,
    Object? alt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: freezed == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerUrl: freezed == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerId: freezed == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int?,
      avgColor: freezed == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SrcCopyWith<$Res>? get src {
    if (_value.src == null) {
      return null;
    }

    return $SrcCopyWith<$Res>(_value.src!, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PhotoImplCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$PhotoImplCopyWith(
          _$PhotoImpl value, $Res Function(_$PhotoImpl) then) =
      __$$PhotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "width") int? width,
      @JsonKey(name: "height") int? height,
      @JsonKey(name: "url") String? url,
      @JsonKey(name: "photographer") String? photographer,
      @JsonKey(name: "photographer_url") String? photographerUrl,
      @JsonKey(name: "photographer_id") int? photographerId,
      @JsonKey(name: "avg_color") String? avgColor,
      @JsonKey(name: "src") Src? src,
      @JsonKey(name: "liked") bool? liked,
      @JsonKey(name: "alt") String? alt});

  @override
  $SrcCopyWith<$Res>? get src;
}

/// @nodoc
class __$$PhotoImplCopyWithImpl<$Res>
    extends _$PhotoCopyWithImpl<$Res, _$PhotoImpl>
    implements _$$PhotoImplCopyWith<$Res> {
  __$$PhotoImplCopyWithImpl(
      _$PhotoImpl _value, $Res Function(_$PhotoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
    Object? photographer = freezed,
    Object? photographerUrl = freezed,
    Object? photographerId = freezed,
    Object? avgColor = freezed,
    Object? src = freezed,
    Object? liked = freezed,
    Object? alt = freezed,
  }) {
    return _then(_$PhotoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      photographer: freezed == photographer
          ? _value.photographer
          : photographer // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerUrl: freezed == photographerUrl
          ? _value.photographerUrl
          : photographerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      photographerId: freezed == photographerId
          ? _value.photographerId
          : photographerId // ignore: cast_nullable_to_non_nullable
              as int?,
      avgColor: freezed == avgColor
          ? _value.avgColor
          : avgColor // ignore: cast_nullable_to_non_nullable
              as String?,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as Src?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      alt: freezed == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoImpl implements _Photo {
  const _$PhotoImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "width") this.width,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "url") this.url,
      @JsonKey(name: "photographer") this.photographer,
      @JsonKey(name: "photographer_url") this.photographerUrl,
      @JsonKey(name: "photographer_id") this.photographerId,
      @JsonKey(name: "avg_color") this.avgColor,
      @JsonKey(name: "src") this.src,
      @JsonKey(name: "liked") this.liked,
      @JsonKey(name: "alt") this.alt});

  factory _$PhotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "width")
  final int? width;
  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "url")
  final String? url;
  @override
  @JsonKey(name: "photographer")
  final String? photographer;
  @override
  @JsonKey(name: "photographer_url")
  final String? photographerUrl;
  @override
  @JsonKey(name: "photographer_id")
  final int? photographerId;
  @override
  @JsonKey(name: "avg_color")
  final String? avgColor;
  @override
  @JsonKey(name: "src")
  final Src? src;
  @override
  @JsonKey(name: "liked")
  final bool? liked;
  @override
  @JsonKey(name: "alt")
  final String? alt;

  @override
  String toString() {
    return 'Photo(id: $id, width: $width, height: $height, url: $url, photographer: $photographer, photographerUrl: $photographerUrl, photographerId: $photographerId, avgColor: $avgColor, src: $src, liked: $liked, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.photographer, photographer) ||
                other.photographer == photographer) &&
            (identical(other.photographerUrl, photographerUrl) ||
                other.photographerUrl == photographerUrl) &&
            (identical(other.photographerId, photographerId) ||
                other.photographerId == photographerId) &&
            (identical(other.avgColor, avgColor) ||
                other.avgColor == avgColor) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, width, height, url,
      photographer, photographerUrl, photographerId, avgColor, src, liked, alt);

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      __$$PhotoImplCopyWithImpl<_$PhotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoImplToJson(
      this,
    );
  }
}

abstract class _Photo implements Photo {
  const factory _Photo(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "width") final int? width,
      @JsonKey(name: "height") final int? height,
      @JsonKey(name: "url") final String? url,
      @JsonKey(name: "photographer") final String? photographer,
      @JsonKey(name: "photographer_url") final String? photographerUrl,
      @JsonKey(name: "photographer_id") final int? photographerId,
      @JsonKey(name: "avg_color") final String? avgColor,
      @JsonKey(name: "src") final Src? src,
      @JsonKey(name: "liked") final bool? liked,
      @JsonKey(name: "alt") final String? alt}) = _$PhotoImpl;

  factory _Photo.fromJson(Map<String, dynamic> json) = _$PhotoImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "width")
  int? get width;
  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(name: "photographer")
  String? get photographer;
  @override
  @JsonKey(name: "photographer_url")
  String? get photographerUrl;
  @override
  @JsonKey(name: "photographer_id")
  int? get photographerId;
  @override
  @JsonKey(name: "avg_color")
  String? get avgColor;
  @override
  @JsonKey(name: "src")
  Src? get src;
  @override
  @JsonKey(name: "liked")
  bool? get liked;
  @override
  @JsonKey(name: "alt")
  String? get alt;

  /// Create a copy of Photo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoImplCopyWith<_$PhotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Src _$SrcFromJson(Map<String, dynamic> json) {
  return _Src.fromJson(json);
}

/// @nodoc
mixin _$Src {
  @JsonKey(name: "original")
  String? get original => throw _privateConstructorUsedError;
  @JsonKey(name: "large2x")
  String? get large2X => throw _privateConstructorUsedError;
  @JsonKey(name: "large")
  String? get large => throw _privateConstructorUsedError;
  @JsonKey(name: "medium")
  String? get medium => throw _privateConstructorUsedError;
  @JsonKey(name: "small")
  String? get small => throw _privateConstructorUsedError;
  @JsonKey(name: "portrait")
  String? get portrait => throw _privateConstructorUsedError;
  @JsonKey(name: "landscape")
  String? get landscape => throw _privateConstructorUsedError;
  @JsonKey(name: "tiny")
  String? get tiny => throw _privateConstructorUsedError;

  /// Serializes this Src to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Src
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SrcCopyWith<Src> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SrcCopyWith<$Res> {
  factory $SrcCopyWith(Src value, $Res Function(Src) then) =
      _$SrcCopyWithImpl<$Res, Src>;
  @useResult
  $Res call(
      {@JsonKey(name: "original") String? original,
      @JsonKey(name: "large2x") String? large2X,
      @JsonKey(name: "large") String? large,
      @JsonKey(name: "medium") String? medium,
      @JsonKey(name: "small") String? small,
      @JsonKey(name: "portrait") String? portrait,
      @JsonKey(name: "landscape") String? landscape,
      @JsonKey(name: "tiny") String? tiny});
}

/// @nodoc
class _$SrcCopyWithImpl<$Res, $Val extends Src> implements $SrcCopyWith<$Res> {
  _$SrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Src
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? large2X = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_value.copyWith(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      large2X: freezed == large2X
          ? _value.large2X
          : large2X // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: freezed == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SrcImplCopyWith<$Res> implements $SrcCopyWith<$Res> {
  factory _$$SrcImplCopyWith(_$SrcImpl value, $Res Function(_$SrcImpl) then) =
      __$$SrcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "original") String? original,
      @JsonKey(name: "large2x") String? large2X,
      @JsonKey(name: "large") String? large,
      @JsonKey(name: "medium") String? medium,
      @JsonKey(name: "small") String? small,
      @JsonKey(name: "portrait") String? portrait,
      @JsonKey(name: "landscape") String? landscape,
      @JsonKey(name: "tiny") String? tiny});
}

/// @nodoc
class __$$SrcImplCopyWithImpl<$Res> extends _$SrcCopyWithImpl<$Res, _$SrcImpl>
    implements _$$SrcImplCopyWith<$Res> {
  __$$SrcImplCopyWithImpl(_$SrcImpl _value, $Res Function(_$SrcImpl) _then)
      : super(_value, _then);

  /// Create a copy of Src
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? original = freezed,
    Object? large2X = freezed,
    Object? large = freezed,
    Object? medium = freezed,
    Object? small = freezed,
    Object? portrait = freezed,
    Object? landscape = freezed,
    Object? tiny = freezed,
  }) {
    return _then(_$SrcImpl(
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      large2X: freezed == large2X
          ? _value.large2X
          : large2X // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
      medium: freezed == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String?,
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      portrait: freezed == portrait
          ? _value.portrait
          : portrait // ignore: cast_nullable_to_non_nullable
              as String?,
      landscape: freezed == landscape
          ? _value.landscape
          : landscape // ignore: cast_nullable_to_non_nullable
              as String?,
      tiny: freezed == tiny
          ? _value.tiny
          : tiny // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SrcImpl implements _Src {
  const _$SrcImpl(
      {@JsonKey(name: "original") this.original,
      @JsonKey(name: "large2x") this.large2X,
      @JsonKey(name: "large") this.large,
      @JsonKey(name: "medium") this.medium,
      @JsonKey(name: "small") this.small,
      @JsonKey(name: "portrait") this.portrait,
      @JsonKey(name: "landscape") this.landscape,
      @JsonKey(name: "tiny") this.tiny});

  factory _$SrcImpl.fromJson(Map<String, dynamic> json) =>
      _$$SrcImplFromJson(json);

  @override
  @JsonKey(name: "original")
  final String? original;
  @override
  @JsonKey(name: "large2x")
  final String? large2X;
  @override
  @JsonKey(name: "large")
  final String? large;
  @override
  @JsonKey(name: "medium")
  final String? medium;
  @override
  @JsonKey(name: "small")
  final String? small;
  @override
  @JsonKey(name: "portrait")
  final String? portrait;
  @override
  @JsonKey(name: "landscape")
  final String? landscape;
  @override
  @JsonKey(name: "tiny")
  final String? tiny;

  @override
  String toString() {
    return 'Src(original: $original, large2X: $large2X, large: $large, medium: $medium, small: $small, portrait: $portrait, landscape: $landscape, tiny: $tiny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SrcImpl &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.large2X, large2X) || other.large2X == large2X) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.portrait, portrait) ||
                other.portrait == portrait) &&
            (identical(other.landscape, landscape) ||
                other.landscape == landscape) &&
            (identical(other.tiny, tiny) || other.tiny == tiny));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, original, large2X, large, medium,
      small, portrait, landscape, tiny);

  /// Create a copy of Src
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SrcImplCopyWith<_$SrcImpl> get copyWith =>
      __$$SrcImplCopyWithImpl<_$SrcImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SrcImplToJson(
      this,
    );
  }
}

abstract class _Src implements Src {
  const factory _Src(
      {@JsonKey(name: "original") final String? original,
      @JsonKey(name: "large2x") final String? large2X,
      @JsonKey(name: "large") final String? large,
      @JsonKey(name: "medium") final String? medium,
      @JsonKey(name: "small") final String? small,
      @JsonKey(name: "portrait") final String? portrait,
      @JsonKey(name: "landscape") final String? landscape,
      @JsonKey(name: "tiny") final String? tiny}) = _$SrcImpl;

  factory _Src.fromJson(Map<String, dynamic> json) = _$SrcImpl.fromJson;

  @override
  @JsonKey(name: "original")
  String? get original;
  @override
  @JsonKey(name: "large2x")
  String? get large2X;
  @override
  @JsonKey(name: "large")
  String? get large;
  @override
  @JsonKey(name: "medium")
  String? get medium;
  @override
  @JsonKey(name: "small")
  String? get small;
  @override
  @JsonKey(name: "portrait")
  String? get portrait;
  @override
  @JsonKey(name: "landscape")
  String? get landscape;
  @override
  @JsonKey(name: "tiny")
  String? get tiny;

  /// Create a copy of Src
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SrcImplCopyWith<_$SrcImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
