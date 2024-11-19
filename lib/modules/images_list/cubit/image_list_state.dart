part of 'image_list_cubit.dart';

@freezed
class ImageListState with _$ImageListState {
  const factory ImageListState({
    @Default(BlocStatus.init) BlocStatus status,
    ImageModelList? data,
    String? error,
    @Default(1) int? page,
    @Default(false) bool isLastPage,
    @Default(false) bool isGridMode,
    Photo? selectedData,
  }) = _ImageListState;
}
