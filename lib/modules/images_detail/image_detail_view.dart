import 'package:awsomeapp/_rfengine/extensions/theme_extension.dart';
import 'package:awsomeapp/models/image_model_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ImageDetailView extends StatelessWidget {
  const ImageDetailView({super.key, required this.photo});

  final Photo photo;

  @override
  Widget build(BuildContext context) {
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
                height: kIsWeb ? 450 : MediaQuery.of(context).size.width,
                child: Center(child: Image.network(photo.src?.large ?? "")),
              ),
              const SizedBox(height: 24),
              Text(photo.photographer ?? "",
                  style: context.textTheme.headlineLarge!
                      .copyWith(fontWeight: FontWeight.w700)),
              const SizedBox(height: 16),
              Text(photo.alt ?? ""),
              const SizedBox(height: 16),
              Text(
                photo.url ?? "",
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
