import 'package:awsomeapp/models/image_model_list.dart';
import 'package:awsomeapp/repositories/image_list_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'mocks.mocks.dart';

void main() {
  late ImageListRepository repository;
  late MockImagesApi mockApi;

  setUp(() {
    mockApi = MockImagesApi();
    repository = ImageListRepository(mockApi);
  });

  group('ImageListRepository Tests', () {
    test('should return ImageModelList on successful API call', () async {
      // Arrange
      const mockPhoto = Photo(
        id: 1,
        width: 1920,
        height: 1080,
        url: 'https://example.com/photo1.jpg',
        photographer: 'John Doe',
        photographerUrl: 'https://example.com/johndoe',
        photographerId: 123,
        avgColor: '#FFFFFF',
        src: Src(
          original: 'https://example.com/photo1_original.jpg',
          large: 'https://example.com/photo1_large.jpg',
          medium: 'https://example.com/photo1_medium.jpg',
          small: 'https://example.com/photo1_small.jpg',
          portrait: 'https://example.com/photo1_portrait.jpg',
          landscape: 'https://example.com/photo1_landscape.jpg',
          tiny: 'https://example.com/photo1_tiny.jpg',
        ),
        liked: true,
        alt: 'A beautiful scenery',
      );

      const mockResponse = ImageModelList(
        page: 1,
        perPage: 1,
        photos: [
          mockPhoto,
        ],
        totalResults: 100,
        nextPage: 'https://example.com/page=2',
      );

      when(mockApi.getCuratedImages(1, 10))
          .thenAnswer((_) async => mockResponse);

      // Act
      final result = await repository.getCuratedImages(page: 1, perPage: 10);

      // Assert
      expect(result, mockResponse);
      verify(mockApi.getCuratedImages(1, 10)).called(1);
    });

    test('should throw an exception on API error', () async {
      // Arrange
      when(mockApi.getCuratedImages(1, 10)).thenThrow(Exception('API Error'));

      // Act & Assert
      expect(
        () => repository.getCuratedImages(page: 1, perPage: 10),
        throwsA(isA<Exception>()),
      );
      verify(mockApi.getCuratedImages(1, 10)).called(1);
    });
  });
}
