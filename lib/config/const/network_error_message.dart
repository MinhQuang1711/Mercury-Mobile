class ExceptionRequestMessage {
  static const String noAuth = "Lỗi xác thực";
  static const String unknow = "Lỗi không xác định";
  static const String connectionError = "Lỗi kết nối";
  static const String cancelToken = "Lỗi cancel token";
  static const String notFound = "Không tìm thấy dữ liệu";
  static const String errorMethod = "Sai phương thức yêu cầu";
  static const String noPermission = "Không có quyền truy cập";
  static const String server = "Máy chủ đang bận, xin thử lại sau";
  static const String sendTimeout = "Quá thời gian gửi dữ liệu (Timeout)";
  static const String connectionTimeout = "Quá thời gian kết nối (Timeout)";
  static const String receiveTimeout = "Quá thời gian nhận dữ liệu (Timeout)";
  static const String badCertificate = "Chứng chỉ bảo mật xấu (badCertificate)";
  static const String noInternetAccess =
      "Không có internet. Vui lòng kiểm tra lại mạng";
}