import 'package:awsomeapp/_rfengine/base_class/pagination_cubit.dart';
import 'package:awsomeapp/repositories/image_list_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../_rfengine/base_class/bloc_status.dart';
import '../../../models/image_model_list.dart';

part 'image_list_state.dart';
part 'image_list_cubit.freezed.dart';

class ImageListCubit extends PaginationCubit<ImageListState, Photo> {
  ImageListCubit() : super(const ImageListState());

  final repo = ImageListRepository();

  void toggleList() {
    emit(state.copyWith(isGridMode: !state.isGridMode));
  }

  @override
  Future<void> refreshNextPageData() async {
    // super.refreshNextPageData();
    if (page == 0) {
      emit(state.copyWith(status: BlocStatus.loading));
      await Future.delayed(const Duration(milliseconds: 200));
    }

    await repo.getCuratedImages(page: page, perPage: perPage).then((result) {
      ImageModelList data = result;
      if (page > 0) {
        if (state.data != null && state.data?.photos != null) {
          data = data.copyWith(
            photos: List.of(state.data!.photos!)..addAll(result.photos ?? []),
          );
        }
      }
      page++;
      items = data.photos ?? [];
      emit(state.copyWith(
        status: BlocStatus.success,
        data: data,
        page: page,
        isLastPage: (result.photos?.isEmpty ?? false) ||
            (result.photos?.length ?? 0) < perPage,
      ));
    }).catchError((error) {
      emit(state.copyWith(status: BlocStatus.error, error: error.toString()));
    });
  }

  Future<void> initData() async {
    emit(state.copyWith(status: BlocStatus.ready));
    await Future.delayed(const Duration(milliseconds: 200));
    refreshPageData();
  }
}
