import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';

import 'textfield/textfield.dart';

class AnimationSearchField extends StatefulWidget {
  const AnimationSearchField({
    super.key,
    this.hint,
    this.sufWidget,
    this.onTapClearButton,
    this.onChanged,
  });
  final String? hint;
  final Widget? sufWidget;
  final Function()? onTapClearButton;
  final Function(String? val)? onChanged;

  @override
  State<AnimationSearchField> createState() => _AnimationSearchFieldState();
}

class _AnimationSearchFieldState extends State<AnimationSearchField> {
  final controller = TextEditingController();
  bool isExpan = false;
  void changedIsExpan() {
    if (controller.text.isNotEmpty) {
      controller.clear();
    }
    isExpan = !isExpan;
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changedIsExpan,
      child: AnimatedContainer(
        width: isExpan ? MediaQuery.of(context).size.width : 50,
        duration: const Duration(milliseconds: 400),
        child: AppTextField(
          canDelete: true,
          hintText: widget.hint,
          controller: controller,
          prefWidget: _prefWidget(),
          sufWidget: widget.sufWidget,
          onChanged: widget.onChanged,
          onTapClearButton: widget.onTapClearButton,
          contentPadding: AppPadding.padding8,
        ),
      ),
    );
  }

  GestureDetector _prefWidget() {
    return GestureDetector(
      onTap: changedIsExpan,
      child: !isExpan
          ? const Icon(Icons.search)
          : const Icon(Icons.arrow_back_ios_outlined),
    );
  }
}
