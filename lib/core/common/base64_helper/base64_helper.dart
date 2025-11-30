import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

class Base64Helper {
  Future<String?> getAvatar(UserModel? user) async {
    if (user == null || user.avatar == null) {
      return null;
    }
    final cleanBase64 = user.avatar!.split(',').last;
    final bytes = base64Decode(cleanBase64);

    final extension = user.avatar!.substring(
      user.avatar!.indexOf('/') + 1,
      user.avatar!.indexOf(';'),
    );

    final dir = await getApplicationDocumentsDirectory();
    final timestamp = DateTime.now().millisecondsSinceEpoch;
    final newPath = '${dir.path}/${user.nickname}_$timestamp.$extension';

    final files = dir.listSync();
    for (var file in files) {
      if (file is File) {
        final filename = file.path.split('/').last;

        final isUserAvatar =
            filename.startsWith('${user.nickname}_') &&
            filename.endsWith('.$extension');

        if (isUserAvatar && file.path != newPath) {
          try {
            if (await file.exists()) {
              await file.delete();
            }
          } catch (e) {
            AppLogger.error(
              '[base64_helper] Failed to delete old avatar: ${file.path}, $e',
            );
          }
        }
      }
    }

    final newFile = File(newPath);
    await newFile.create(recursive: true);
    await newFile.writeAsBytes(bytes);

    return newPath;
  }
}
