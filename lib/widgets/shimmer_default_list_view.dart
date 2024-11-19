import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'round_container.dart';

enum ShimmerListType { defaultList }

class ShimmerDefaultListView extends StatelessWidget {
  const ShimmerDefaultListView({super.key, required this.type});

  final ShimmerListType type;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
          itemCount: 15,
          itemBuilder: (_, index) {
            switch (type) {
              case ShimmerListType.defaultList:
                return const ShimmerDefaultListItemView();
              default:
                return const ShimmerDefaultListItemView();
            }
          }),
    );
  }
}

class ShimmerDefaultListItemView extends StatelessWidget {
  const ShimmerDefaultListItemView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const RoundContainer(
            color: Colors.white,
            child: SizedBox(height: 36, width: 36),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: const SizedBox(height: 9, width: double.infinity),
                ),
                const SizedBox(height: 9),
                Container(
                  color: Colors.white,
                  child: const SizedBox(height: 9, width: 50),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
