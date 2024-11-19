import 'package:awsomeapp/modules/images_list/cubit/image_list_cubit.dart';
import 'package:awsomeapp/repositories/image_list_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

class MockImageListRepository extends Mock implements ImageListRepository {}

void main() {
  late MockImageListRepository mockRepository;
  late ImageListCubit imageListCubit;

  setUp(() {
    mockRepository = MockImageListRepository();
    imageListCubit = ImageListCubit()..repo = mockRepository;
  });

  tearDown(() {
    imageListCubit.close();
  });

  group('ImageListCubit', () {
    test('initial state is correct', () {
      expect(imageListCubit.state, const ImageListState());
    });
  });

  blocTest<ImageListCubit, ImageListState>(
    'emits updated isGridMode when toggleList is called',
    build: () => imageListCubit,
    act: (cubit) => cubit.toggleList(),
    expect: () => [
      const ImageListState(isGridMode: true),
    ],
  );
}
