import 'package:awsomeapp/modules/images_list/cubit/image_list_cubit.dart';
import 'package:awsomeapp/modules/images_list/image_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageListPage extends StatelessWidget {
  const ImageListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageListCubit()..initData(),
      child: const ImageListView(),
    );
  }
}
