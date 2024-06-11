class QRCodeService {
  QRCodeService._();
  static final instance = QRCodeService._();

  // ID ngan hang
  String _bankId = "";
  // Stk nguoi nhan
  String _accountNo = "";
  // Số tiền chuyển khoản phải là một số dương và tối đa 13 chữ số.
  double _amount = 0;
  // Nội dung chuyển khoản bao gồm tối đa 50 chữ cái, không bao gồm các kí tự đặc biệt.
  String _description = "";
  //  Quy định tên người thụ hưởng hiển thị lên file ảnh VietQR. Trường này không nằm trong tiêu chuẩn tạo mã VietQR.
  String _accountName = "";

  void setBankId(String id) {
    _bankId = id;
  }

  void setAccountNo(String accountNo) {
    _accountNo = accountNo;
  }

  void setAmount(double amount) {
    _amount = amount;
  }

  void setDescription({String? description}) {
    _description = description ?? "";
  }

  void setAccountName(String name) {
    _accountName = name;
  }

  String get getQrCode =>
      "https://img.vietqr.io/image/$_bankId-$_accountNo-qr_only.png?amount=$_amount&addInfo=$_description&accountName=$_accountName";
}
