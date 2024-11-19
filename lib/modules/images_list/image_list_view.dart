import 'package:awsomeapp/_rfengine/extensions/theme_extension.dart';
import 'package:awsomeapp/modules/images_list/cubit/image_list_cubit.dart';
import 'package:awsomeapp/modules/images_list/widget/grid_view_image.dart';
import 'package:awsomeapp/modules/images_list/widget/list_view_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageListView extends StatelessWidget {
  const ImageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: MainBody(),
    );
  }
}

class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
  });

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
        child: context.select((ImageListCubit bloc) => bloc.state.isGridMode)
            ? const GridViewImage()
            : const ListViewImage(),
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
