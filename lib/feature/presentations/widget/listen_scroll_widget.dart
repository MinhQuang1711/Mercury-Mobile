import 'package:flutter/material.dart';

class ListenScrollWidget extends StatefulWidget {
  const ListenScrollWidget({
    super.key,
    required this.child,
    required this.controller,
    this.handleScrollEndOfList,
  });
  final Widget child;
  final ScrollController controller;
  final Function()? handleScrollEndOfList;

  @override
  State<ListenScrollWidget> createState() => _ListenScrollWidgetState();
}

class _ListenScrollWidgetState extends State<ListenScrollWidget> {
  bool _onScrollEndOfList() {
    return widget.controller.position.maxScrollExtent ==
        widget.controller.position.pixels;
  }

  void _onListen() {
    widget.controller.addListener(() {
      if (_onScrollEndOfList()) widget.handleScrollEndOfList?.call();
    });
  }

  @override
  void initState() {
    super.initState();
    _onListen();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
