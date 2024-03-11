import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';

import '../../../config/theme/color.dart';
import '../textfield/textfield.dart';

class AppSearchFiled<T> extends StatefulWidget {
  const AppSearchFiled({
    super.key,
    this.hint,
    this.onTap,
    this.offset,
    this.initValue,
    this.sufWidget,
    this.readOnly,
    this.validator,
    this.controller,
    required this.items,
    this.suggestionDirection,
    required this.appItemFields,
    this.onTapClearButton,
  });
  final String? initValue;
  final Offset? offset;
  final String? hint;
  final bool? readOnly;
  final List<T> items;
  final Widget? sufWidget;
  final Function()? onTapClearButton;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(SearchFieldListItem<T>)? onTap;
  final SuggestionDirection? suggestionDirection;
  final SearchFieldListItem<T> Function(T) appItemFields;

  @override
  State<AppSearchFiled<T>> createState() => _AppSearchFiledState<T>();
}

class _AppSearchFiledState<T> extends State<AppSearchFiled<T>> {
  bool hasValue = false;
  TextEditingController? controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      controller = widget.controller;
    }
  }

  void onTap(SearchFieldListItem<T> val) {
    if (!hasValue) {
      hasValue = true;
      setState(() {});
    }
    FocusScope.of(context).unfocus();
    widget.onTap?.call(val);
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SearchField<T>(
      offset: widget.offset,
      initialValue: widget.initValue != null
          ? SearchFieldListItem(widget.initValue!)
          : null,
      controller: controller,
      onSuggestionTap: onTap,
      readOnly: widget.readOnly ?? false,
      validator: widget.validator,
      onTapOutside: (p0) {
        FocusScope.of(context).unfocus();
      },
      itemHeight: 48,
      suggestionsDecoration: SuggestionDecoration(
        color: Colors.grey.shade100.withOpacity(0.4),
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(7),
          bottomRight: Radius.circular(7),
        ),
      ),
      suggestionDirection:
          widget.suggestionDirection ?? SuggestionDirection.down,
      searchInputDecoration: TextFieldProperties.getInputDecoration(
        hintText: widget.hint,
        sufWidget: hasValue ? _closeButton() : _arrowDownIcon(),
      ),
      suggestions: widget.items.map((e) => widget.appItemFields(e)).toList(),
    );
  }

  Icon _arrowDownIcon() {
    return const Icon(
      Icons.arrow_drop_down_rounded,
      size: 25,
      color: AppColor.grey5,
    );
  }

  GestureDetector _closeButton() {
    void onTapClearButton() {
      controller?.clear();
      widget.onTapClearButton?.call();
    }

    return GestureDetector(
      onTap: onTapClearButton,
      child: const Icon(
        Icons.close,
        color: AppColor.grey5,
      ),
    );
  }
}
