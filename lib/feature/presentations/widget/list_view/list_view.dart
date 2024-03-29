import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';

class AppListView<T> extends StatelessWidget {
  const AppListView({
    super.key,
    this.onRefreshing,
    required this.items,
    required this.child,
  });
  final List<T> items;
  final ListView child;
  final Function()? onRefreshing;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return EmptyWidget(
        onTap: onRefreshing,
      );
    }
    return child;
  }
}
