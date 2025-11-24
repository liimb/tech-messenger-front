import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tech_messenger/modules/editor/data/datasource/interface/editor_datasource_interface.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_avatar.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_description.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_name.dart';

part 'editor_datasource_impl.g.dart';

@RestApi()
abstract class EditorDatasource implements IEditorDatasource {
  factory EditorDatasource(Dio dio, {required String baseUrl}) =
      _EditorDatasource;

  @override
  @PATCH('/user/name')
  @DioResponseType(ResponseType.plain)
  @Extra({'requiresAuth': true})
  Future<HttpResponse> updateName(@Body() UpdateNameRequest request);

  @override
  @PATCH('/user/description')
  @DioResponseType(ResponseType.plain)
  @Extra({'requiresAuth': true})
  Future<HttpResponse> updateDescription(
    @Body() UpdateDescriptionRequest request,
  );

  @override
  @PATCH('/user/avatar')
  @DioResponseType(ResponseType.plain)
  @Extra({'requiresAuth': true})
  Future<HttpResponse> updateAvatar(@Body() UpdateAvatarRequest request);
}
