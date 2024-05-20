class PagedList<T> {
  final int pageSize;
  final List<T> items;
  final int currentPage;
  final int totalCount;

  PagedList({
    required this.items,
    required this.pageSize,
    required this.currentPage,
    required this.totalCount,
  });

  PagedList.fromJson(Map<String, dynamic> json, T Function(dynamic) parser)
      : pageSize = json["pageSize"],
        currentPage = json["currentPage"],
        totalCount = json["totalCount"],
        items = (json["data"] as List)
            .map((e) => parser.call(e as dynamic))
            .toList();
}
