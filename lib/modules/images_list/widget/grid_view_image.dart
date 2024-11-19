import 'package:awsomeapp/models/image_model_list.dart';
import 'package:awsomeapp/modules/images_list/cubit/image_list_cubit.dart';
import 'package:awsomeapp/widgets/round_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridViewImage extends StatelessWidget {
  const GridViewImage({
    super.key,
    this.onTapItem,
  });

  final Function(Photo)? onTapItem;

  @override
  Widget build(BuildContext context) {
    List<Photo> data =
        context.select((ImageListCubit bloc) => bloc.state.data?.photos ?? []);
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      padding: const EdgeInsets.all(8.0), // padding around the grid
      itemCount: data.length, // total number of items
      itemBuilder: (context, index) {
        var item = data[index];
        return InkWell(
          onTap: () {
            if (onTapItem != null) {
              onTapItem!(item);
            }
          },
          child: RoundContainer(
            child: Image.network(
              item.src?.medium ?? "",
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
