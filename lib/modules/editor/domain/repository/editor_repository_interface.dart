import 'package:retrofit/dio.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_avatar.dart';

import 'package:tech_messenger/modules/editor/domain/model/update_description.dart';
import 'package:tech_messenger/modules/editor/domain/model/update_name.dart';

abstract interface class IEditorRepository {
  Future<HttpResponse> updateName(UpdateNameRequest updateNameRequest);
  Future<HttpResponse> updateDescription(
    UpdateDescriptionRequest updateDescriptionRequest,
  );
  Future<HttpResponse> updateAvatar(UpdateAvatarRequest updateAvatarRequest);
}
