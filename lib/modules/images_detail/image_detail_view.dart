import 'package:awsomeapp/_rfengine/extensions/theme_extension.dart';
import 'package:awsomeapp/models/image_model_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageDetailView extends StatelessWidget {
  const ImageDetailView({super.key, required this.photo});

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    double imageHeight = kIsWeb ? 450 : MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          child: Column(
            children: [
              SizedBox(
                height: imageHeight,
                child: Center(
                  child: Image.network(
                    photo.src?.large ?? "",
                    filterQuality: FilterQuality.medium,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child:
                            Container(color: Colors.white, height: imageHeight),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) => Icon(
                      Icons.image_not_supported_outlined,
                      size: imageHeight,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(photo.photographer ?? "",
                  style: context.textTheme.headlineLarge!
                      .copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 16),
              Text(photo.alt ?? " - "),
              const SizedBox(height: 16),
              Text(
                photo.url ?? " - ",
                style: context.textTheme.labelSmall!
                    .copyWith(fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
