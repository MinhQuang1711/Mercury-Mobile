import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';

class AccountAvatar extends StatelessWidget {
  const AccountAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      color: Colors.blue.shade50,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(Assets.image.defaultAvatar.keyName),
            ),
          ),
        ),
      ),
    );
  }
}
