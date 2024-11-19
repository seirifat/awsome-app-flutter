import 'package:awsomeapp/_rfengine/api/images_api.dart';
import 'package:awsomeapp/_rfengine/networking/app_dio.dart';
import 'package:awsomeapp/models/image_model_list.dart';

class ImageListRepository {
  final ImagesApi _apiClient = ImagesApi(AppDio.getDio());

  Future<ImageModelList> getCuratedImages({
    required int page,
    required int perPage,
  }) async {
    var dataPagination = await _apiClient.getCuratedImages(page, perPage);
    return dataPagination;
  }
}
