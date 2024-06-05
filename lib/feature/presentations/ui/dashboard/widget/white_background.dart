import 'package:flutter/material.dart';

import '../../../../../config/const/padding.dart';

class WhiteBackground extends StatelessWidget {
  const WhiteBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 220,
      child: Container(
        padding: AppPadding.padding12,
        height: MediaQuery.of(context).size.height,
        color: const Color.fromARGB(255, 241, 239, 235),
      ),
    );
  }
}
