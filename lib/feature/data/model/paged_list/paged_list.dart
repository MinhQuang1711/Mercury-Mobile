class PagedList<T> {
  final List<T> items;
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
        items = (json["items"] as List)
            .map((e) => parser.call(e as dynamic))
            .toList();
}
