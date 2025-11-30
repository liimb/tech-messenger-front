import 'dart:convert';
import 'dart:typed_data';

import 'package:retrofit/dio.dart';

import 'package:tech_messenger/modules/editor/data/datasource/interface/editor_datasource_interface.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_avatar.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_description.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_name.dart';
import 'package:tech_messenger/modules/editor/domain/repository/editor_repository_interface.dart';

class EditorRepository implements IEditorRepository {
  final IEditorDatasource ds;
  const EditorRepository({required this.ds});

  @override
  Future<HttpResponse> updateName(UpdateNameRequest updateNameRequest) {
    return ds.updateName(updateNameRequest);
  }

  @override
  Future<HttpResponse> updateDescription(
    UpdateDescriptionRequest updateDescriptionRequest,
  ) {
    return ds.updateDescription(updateDescriptionRequest);
  }

  @override
  Future<HttpResponse> updateAvatar(UpdateAvatarRequest updateAvatarRequest) {
    return ds.updateAvatar(updateAvatarRequest);
  }
}
