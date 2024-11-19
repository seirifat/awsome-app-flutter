import 'package:awsomeapp/models/image_model_list.dart';
import 'package:awsomeapp/modules/images_list/cubit/image_list_cubit.dart';
import 'package:awsomeapp/widgets/bottom_loader.dart';
import 'package:awsomeapp/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewImage extends StatelessWidget {
  const ListViewImage({
    super.key,
    this.onTapItem,
  });

  final Function(Photo)? onTapItem;

  @override
  Widget build(BuildContext context) {
    List<Photo> data =
        context.select((ImageListCubit bloc) => bloc.state.data?.photos ?? []);
    bool isLastPage =
        context.select((ImageListCubit bloc) => bloc.state.isLastPage);
    return ListView.builder(
      itemCount: data.length + (isLastPage ? 0 : 1),
      padding: const EdgeInsets.all(8),
      itemBuilder: (context, index) {
        if (index >= data.length) {
          return const BottomLoader();
        }
        var item = data[index];
        var imageUrlString = item.src?.small ?? "";
        return ListTile(
          leading: imageUrlString != ""
              ? ImageWidget(imageUrlString: imageUrlString)
              : const Icon(Icons.image, size: 46),
          title: Text(
            item.photographer ?? "-",
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          subtitle: Text(item.alt ?? "-"),
          onTap: () {
            if (onTapItem != null) {
              onTapItem!(item);
            }
          },
        );
      },
    );
  }
}
