import 'package:awsomeapp/_rfengine/extensions/theme_extension.dart';
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
      extendBody: true,
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
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          Builder(builder: (context) {
            return sliverAppbar(
              context,
              gridButtonOnTap: () {
                context.read<ImageListCubit>().toggleList();
              },
            );
          })
        ];
      },
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) =>
            FadeTransition(opacity: animation, child: child),
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<ImageListCubit>().refreshPageData();
          },
          child: context.select((ImageListCubit bloc) => bloc.state.isGridMode)
              ? const GridViewImage()
              : ListViewImage(scrollController: scrollController),
        ),
      ),
    );
  }
}

Widget sliverAppbar(BuildContext context, {void Function()? gridButtonOnTap}) {
  return SliverAppBar(
    leading: null,
    backgroundColor: context.theme.primaryColor,
    centerTitle: false,
    title: Text(
      "Awsome App",
      style: TextStyle(color: context.theme.highlightColor),
    ),
    floating: false,
    pinned: true,
    snap: false,
    leadingWidth: 32,
    actions: [
      IconButton(
        icon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) =>
              FadeTransition(opacity: animation, child: child),
          child: context.select((ImageListCubit bloc) => bloc.state.isGridMode)
              ? const Icon(
                  key: ValueKey("view_list_rounded"),
                  Icons.view_list_rounded,
                  color: Colors.white)
              : const Icon(
                  key: ValueKey("grid_view_rounded"),
                  Icons.grid_view_rounded,
                  color: Colors.white),
        ),
        onPressed: gridButtonOnTap,
      ),
    ],
  );
}
