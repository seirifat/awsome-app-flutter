import 'package:awsomeapp/_rfengine/extensions/theme_extension.dart';
import 'package:awsomeapp/models/image_model_list.dart';
import 'package:awsomeapp/modules/images_detail/image_detail_page.dart';
import 'package:awsomeapp/modules/images_list/cubit/image_list_cubit.dart';
import 'package:awsomeapp/modules/images_list/widget/grid_view_image.dart';
import 'package:awsomeapp/modules/images_list/widget/list_view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageListView extends StatefulWidget {
  const ImageListView({super.key});

  @override
  State<ImageListView> createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_loadMore);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainBody(scrollController: _scrollController),
    );
  }

  Future<void> _loadMore() async {
    final scrollPosition = _scrollController.position;
    if (scrollPosition.pixels == scrollPosition.maxScrollExtent) {
      if (context.read<ImageListCubit>().state.isLastPage) {
        return;
      }
      context.read<ImageListCubit>().refreshNextPageData();
    }
  }
}

class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: scrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            backgroundColor: context.theme.primaryColor,
            centerTitle: false,
            title: Text(
              "Awsome App",
              style: TextStyle(color: context.theme.highlightColor),
            ),
            floating: true,
            snap: true,
            actions: [
              IconButton(
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  transitionBuilder: (child, animation) =>
                      FadeTransition(opacity: animation, child: child),
                  child: context.select(
                          (ImageListCubit bloc) => bloc.state.isGridMode)
                      ? const Icon(
                          key: ValueKey("view_list_rounded"),
                          Icons.view_list_rounded,
                          color: Colors.white)
                      : const Icon(
                          key: ValueKey("grid_view_rounded"),
                          Icons.grid_view_rounded,
                          color: Colors.white),
                ),
                onPressed: () {
                  context.read<ImageListCubit>().toggleList();
                },
              ),
            ],
          )
        ];
      },
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<ImageListCubit>().refreshPageData();
        },
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) =>
              FadeTransition(opacity: animation, child: child),
          child: context.select((ImageListCubit bloc) => bloc.state.isGridMode)
              ? GridViewImage(
                  onTapItem: (photo) {
                    onTapItem(context, photo);
                  },
                )
              : ListViewImage(
                  onTapItem: (photo) {
                    onTapItem(context, photo);
                  },
                ),
        ),
      ),
    );
  }

  void onTapItem(BuildContext context, Photo photo) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ImageDetailPage(photo: photo)),
    );
  }
}
