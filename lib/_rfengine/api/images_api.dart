import 'package:awsomeapp/models/image_model_list.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'images_api.g.dart';

@RestApi()
abstract class ImagesApi {
  factory ImagesApi(Dio dio) = _ImagesApi;

  @GET("/curated")
  Future<ImageModelList> getCuratedImages(
    @Query('page') int page,
    @Query('per_page') int perPage,
  );
}
