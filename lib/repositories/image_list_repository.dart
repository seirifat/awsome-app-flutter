import 'package:awsomeapp/_rfengine/api/images_api.dart';
import 'package:awsomeapp/_rfengine/networking/app_dio.dart';
import 'package:awsomeapp/models/image_model_list.dart';

class ImageListRepository {
  late ImagesApi _apiClient = ImagesApi(AppDio.getDio());

  ImageListRepository(ImagesApi apiClient) {
    _apiClient = apiClient;
  }

  Future<ImageModelList> getCuratedImages({
    required int page,
    required int perPage,
  }) async {
    var dataPagination = await _apiClient.getCuratedImages(page, perPage);
    return dataPagination;
  }
}
