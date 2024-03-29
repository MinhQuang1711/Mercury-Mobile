class PagedList<T> {
  final T items;
  final int pageSize;
  final int totalItems;
  final int totalPages;

  PagedList({
    required this.items,
    required this.pageSize,
    required this.totalItems,
    required this.totalPages,
  });

  PagedList.fromJson(Map<String, dynamic> json, T Function(dynamic) parser)
      : pageSize = json["pageSize"],
        totalItems = json["totalItems"],
        totalPages = json["totalPages"],
        items = (parser(json["items"] as dynamic));
}
