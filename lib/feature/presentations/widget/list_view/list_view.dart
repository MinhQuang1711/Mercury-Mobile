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
    return RefreshIndicator(
      child: items.isEmpty ? EmptyWidget(onTap: onRefreshing) : child,
      onRefresh: () async => onRefreshing?.call(),
    );
  }
}
