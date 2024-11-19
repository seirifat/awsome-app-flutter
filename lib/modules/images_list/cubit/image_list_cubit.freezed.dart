// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ImageListState {
  BlocStatus get status => throw _privateConstructorUsedError;
  ImageModelList? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  bool get isGridMode => throw _privateConstructorUsedError;
  Photo? get selectedData => throw _privateConstructorUsedError;

  /// Create a copy of ImageListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageListStateCopyWith<ImageListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageListStateCopyWith<$Res> {
  factory $ImageListStateCopyWith(
          ImageListState value, $Res Function(ImageListState) then) =
      _$ImageListStateCopyWithImpl<$Res, ImageListState>;
  @useResult
  $Res call(
      {BlocStatus status,
      ImageModelList? data,
      String? error,
      int? page,
      bool isLastPage,
      bool isGridMode,
      Photo? selectedData});

  $ImageModelListCopyWith<$Res>? get data;
  $PhotoCopyWith<$Res>? get selectedData;
}

/// @nodoc
class _$ImageListStateCopyWithImpl<$Res, $Val extends ImageListState>
    implements $ImageListStateCopyWith<$Res> {
  _$ImageListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? page = freezed,
    Object? isLastPage = null,
    Object? isGridMode = null,
    Object? selectedData = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ImageModelList?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isGridMode: null == isGridMode
          ? _value.isGridMode
          : isGridMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedData: freezed == selectedData
          ? _value.selectedData
          : selectedData // ignore: cast_nullable_to_non_nullable
              as Photo?,
    ) as $Val);
  }

  /// Create a copy of ImageListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageModelListCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ImageModelListCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }

  /// Create a copy of ImageListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res>? get selectedData {
    if (_value.selectedData == null) {
      return null;
    }

    return $PhotoCopyWith<$Res>(_value.selectedData!, (value) {
      return _then(_value.copyWith(selectedData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageListStateImplCopyWith<$Res>
    implements $ImageListStateCopyWith<$Res> {
  factory _$$ImageListStateImplCopyWith(_$ImageListStateImpl value,
          $Res Function(_$ImageListStateImpl) then) =
      __$$ImageListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      ImageModelList? data,
      String? error,
      int? page,
      bool isLastPage,
      bool isGridMode,
      Photo? selectedData});

  @override
  $ImageModelListCopyWith<$Res>? get data;
  @override
  $PhotoCopyWith<$Res>? get selectedData;
}

/// @nodoc
class __$$ImageListStateImplCopyWithImpl<$Res>
    extends _$ImageListStateCopyWithImpl<$Res, _$ImageListStateImpl>
    implements _$$ImageListStateImplCopyWith<$Res> {
  __$$ImageListStateImplCopyWithImpl(
      _$ImageListStateImpl _value, $Res Function(_$ImageListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
    Object? page = freezed,
    Object? isLastPage = null,
    Object? isGridMode = null,
    Object? selectedData = freezed,
  }) {
    return _then(_$ImageListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ImageModelList?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isGridMode: null == isGridMode
          ? _value.isGridMode
          : isGridMode // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedData: freezed == selectedData
          ? _value.selectedData
          : selectedData // ignore: cast_nullable_to_non_nullable
              as Photo?,
    ));
  }
}

/// @nodoc

class _$ImageListStateImpl implements _ImageListState {
  const _$ImageListStateImpl(
      {this.status = BlocStatus.init,
      this.data,
      this.error,
      this.page = 1,
      this.isLastPage = false,
      this.isGridMode = false,
      this.selectedData});

  @override
  @JsonKey()
  final BlocStatus status;
  @override
  final ImageModelList? data;
  @override
  final String? error;
  @override
  @JsonKey()
  final int? page;
  @override
  @JsonKey()
  final bool isLastPage;
  @override
  @JsonKey()
  final bool isGridMode;
  @override
  final Photo? selectedData;

  @override
  String toString() {
    return 'ImageListState(status: $status, data: $data, error: $error, page: $page, isLastPage: $isLastPage, isGridMode: $isGridMode, selectedData: $selectedData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.isGridMode, isGridMode) ||
                other.isGridMode == isGridMode) &&
            (identical(other.selectedData, selectedData) ||
                other.selectedData == selectedData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, data, error, page,
      isLastPage, isGridMode, selectedData);

  /// Create a copy of ImageListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageListStateImplCopyWith<_$ImageListStateImpl> get copyWith =>
      __$$ImageListStateImplCopyWithImpl<_$ImageListStateImpl>(
          this, _$identity);
}

abstract class _ImageListState implements ImageListState {
  const factory _ImageListState(
      {final BlocStatus status,
      final ImageModelList? data,
      final String? error,
      final int? page,
      final bool isLastPage,
      final bool isGridMode,
      final Photo? selectedData}) = _$ImageListStateImpl;

  @override
  BlocStatus get status;
  @override
  ImageModelList? get data;
  @override
  String? get error;
  @override
  int? get page;
  @override
  bool get isLastPage;
  @override
  bool get isGridMode;
  @override
  Photo? get selectedData;

  /// Create a copy of ImageListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageListStateImplCopyWith<_$ImageListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
