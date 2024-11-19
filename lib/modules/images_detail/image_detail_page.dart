import 'package:awsomeapp/models/image_model_list.dart';
import 'package:awsomeapp/modules/images_detail/image_detail_view.dart';
import 'package:flutter/material.dart';

class ImageDetailPage extends StatelessWidget {
  const ImageDetailPage({super.key, required this.photo});

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return ImageDetailView(photo: photo);
  }
}
