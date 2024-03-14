import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class AppImage {
  static DecorationImage networkImage({String? source}) {
    return DecorationImage(
      fit: BoxFit.fill,
      image: NetworkImage(source ?? ""),
      onError: (exception, stackTrace) => Image.asset(
        Assets.image.defaultAvatar.keyName,
      ),
    );
  }
}
