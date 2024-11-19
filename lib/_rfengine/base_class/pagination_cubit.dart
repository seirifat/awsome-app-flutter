import 'package:flutter_bloc/flutter_bloc.dart';

class PaginationCubit<State, T> extends Cubit<State> {
  List<T> items = List<T>.empty();
  int page = 1;
  int perPage = 14;

  PaginationCubit(super.initialState);

  // REFRESHER
  //
  Future<void> refreshPageData() async {
    page = 0;
    refreshNextPageData();
  }

  Future<void> refreshNextPageData() async => page += 1;

  void stopRefresher() {
    if (page > 1) {
      return;
    }
  }
}
