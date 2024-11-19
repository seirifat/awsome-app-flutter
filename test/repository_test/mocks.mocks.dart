// Mocks generated by Mockito 5.4.4 from annotations
// in awsomeapp/test/repository_test/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:awsomeapp/_rfengine/api/images_api.dart' as _i3;
import 'package:awsomeapp/models/image_model_list.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeImageModelList_0 extends _i1.SmartFake
    implements _i2.ImageModelList {
  _FakeImageModelList_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ImagesApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockImagesApi extends _i1.Mock implements _i3.ImagesApi {
  MockImagesApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.ImageModelList> getCuratedImages(
    int? page,
    int? perPage,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getCuratedImages,
          [
            page,
            perPage,
          ],
        ),
        returnValue: _i4.Future<_i2.ImageModelList>.value(_FakeImageModelList_0(
          this,
          Invocation.method(
            #getCuratedImages,
            [
              page,
              perPage,
            ],
          ),
        )),
      ) as _i4.Future<_i2.ImageModelList>);
}
