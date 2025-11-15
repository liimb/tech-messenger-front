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
  @POST('/updateName')
  @DioResponseType(ResponseType.plain)
  Future<HttpResponse> updateName(@Body() UpdateNameRequest request);

  @override
  @POST('/updateDescription')
  @DioResponseType(ResponseType.plain)
  Future<HttpResponse> updateDescription(
    @Body() UpdateDescriptionRequest request,
  );

  @override
  @POST('/updateAvatar')
  @DioResponseType(ResponseType.plain)
  Future<HttpResponse> updateAvatar(@Body() UpdateAvatarRequest request);
}
