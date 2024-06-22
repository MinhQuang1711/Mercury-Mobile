import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';
import 'package:select_button_package/model/search_decoration.dart';
import 'package:select_button_package/model/search_item.dart';
import 'package:select_button_package/select_button_package.dart';

class AppSelectButton<T> extends StatelessWidget {
  const AppSelectButton({
    super.key,
    this.title,
    this.hintText,
    this.searchHint,
    this.hideSelectedItem,
    required this.items,
    required this.onTap,
    required this.appSearchItem,
  });
  final String? title;
  final List<T> items;
  final String? hintText;
  final String? searchHint;
  final bool? hideSelectedItem;

  final Function(SearchItem<T>) onTap;
  final SearchItem<T> Function(T) appSearchItem;
  @override
  Widget build(BuildContext context) {
    return CustomSelectButton<T>(
      onTap: onTap,
      hideSeletedItem: hideSelectedItem,
      searchItems: items.map((e) => appSearchItem(e)).toList(),
      searchDecoration: SearchDecoration(
        hint: searchHint,
        underLineColor: AppColor.blue,
      ),
      decoration: TextFieldProperties.getInputDecoration(
        hintText: hintText,
        sufWidget: const Icon(
          Icons.arrow_drop_down_rounded,
        ),
      ),
      title: title != null
          ? Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                title!,
                style: captionBold.copyWith(color: AppColor.blue),
              ),
            )
          : null,
    );
  }
}
