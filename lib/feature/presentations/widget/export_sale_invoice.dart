import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/core/utils/singleton/qr_code_singleton.dart';
import 'package:mercury/core/utils/singleton/user_singleton.dart';
import 'package:mercury/feature/data/model/user/user.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';

class ExportSaleInvoiceScreen extends StatelessWidget {
  const ExportSaleInvoiceScreen(
      {super.key,
      required this.saleInvoice,
      required this.total,
      required this.shippingFee,
      required this.discount});
  final SaleInvoiceRequest saleInvoice;
  final double total;
  final double discount;
  final double shippingFee;

  @override
  Widget build(BuildContext context) {
    var user = UserSingleton.instance.user;
    QRCodeService.instance
      ..setBankId(user?.bankCode ?? "TCB")
      ..setAccountNo(user?.reciverAccountNumber ?? "19034445486011")
      ..setAmount((total - discount))
      ..setAccountName(user?.reciverName ?? "LE THUY NGAN");
    return Container(
      color: AppColor.white,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _shopName(),
          const SizedBox(height: 20),
          _address(),
          const SizedBox(height: 5),
          _phoneNumber(),
          const Divider(thickness: 1, color: AppColor.grey5),
          _createDate(),
          const SizedBox(height: 10),
          _title(),
          const SizedBox(height: 10),
          _rowTable(),
          const SizedBox(height: 10),
          Column(children: [
            ...(saleInvoice.detailSaleInvoice ?? [])
                .map((e) => _card(e))
                .toList(),
            if (shippingFee > 0)
              _card(ComboBox(
                name: "Phí vận chuyển",
                quantity: 1,
                price: shippingFee,
              ))
          ]),
          const SizedBox(height: 30),
          Row(
            children: [
              _infoTranfer(user),
              _infoBill(),
            ],
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.network(QRCodeService.instance.getQrCode),
            ),
          ),
          // const SizedBox(height: 50),
        ],
      ),
    );
  }

  Expanded _infoBill() {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: "Tổng: ",
            style: captionRegular.copyWith(color: AppColor.black),
            children: [
              TextSpan(
                text: total.formatNumber(),
                style: captionBold,
              )
            ],
          ),
        ),
        // Text("Tổng: ", style: captionBold),
        const SizedBox(height: 10),
        Text(
          "Giảm giá: ${discount.formatNumber()}",
          style: captionRegular.copyWith(color: AppColor.black),
        ),
        const SizedBox(height: 10),
        RichText(
          text: TextSpan(
            text: "Tổng thu: ",
            style: captionRegular.copyWith(color: AppColor.black),
            children: [
              TextSpan(
                text: (total - discount + shippingFee).formatNumber(),
                style: captionBold.copyWith(color: AppColor.black),
              )
            ],
          ),
        ),
      ],
    ));
  }

  Expanded _infoTranfer(User? user) {
    return Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Thông tin chuyển khoản",
                style: captionBold.copyWith(color: AppColor.black)),
            const SizedBox(height: 10),
            Text(
              user?.bankShortName ?? "Techcombank",
              style: captionRegular.copyWith(color: AppColor.black),
            ),
            Text(user?.reciverAccountNumber ?? "1903 4445 4860 11",
                style: captionRegular.copyWith(color: AppColor.black)),
            Text(user?.reciverName ?? "Le Thuy Ngan",
                style: captionRegular.copyWith(color: AppColor.black)),
          ],
        ));
  }

  Row _card(ComboBox e) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                e.name ?? "",
                style: captionRegular.copyWith(color: AppColor.black),
              ),
              Text("x${e.quantity ?? 1}",
                  style: captionRegular.copyWith(color: AppColor.black))
            ],
          ),
        ),
        Expanded(
          child: Text((e.price ?? 0).formatNumber(),
              style: captionRegular.copyWith(color: AppColor.black)),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(((e.price ?? 0) * (e.quantity ?? 0)).formatNumber(),
              style: captionRegular.copyWith(color: AppColor.black)),
        ),
      ],
    );
  }

  Row _rowTable() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text("Sản phẩm",
              style:
                  captionBold.copyWith(fontFamily: "", color: AppColor.black)),
        ),
        Expanded(
            child: Text("Đơn giá",
                style: captionBold.copyWith(
                    fontFamily: "", color: AppColor.black))),
        const SizedBox(width: 10),
        Expanded(
            child: Text("Thành tiền",
                style: captionBold.copyWith(
                    fontFamily: "", color: AppColor.black))),
      ],
    );
  }

  Align _title() {
    return Align(
        child: Text(
      "HÓA ĐƠN BÁN",
      style: h5ExtraBold.copyWith(fontFamily: "", color: AppColor.black),
    ));
  }

  Text _createDate() => Text("Ngày: ${DateTime.now().toDateFormat()}",
      style: captionRegular.copyWith(color: AppColor.black));

  Text _phoneNumber() {
    return Text(
      "Điện thoại: ${UserSingleton.instance.user?.phoneNumber ?? ""}",
      style: captionRegular.copyWith(color: AppColor.black),
    );
  }

  Text _address() => Text("Địa chỉ: $shopAddress",
      style: captionRegular.copyWith(color: AppColor.black));

  Align _shopName() => Align(
      child: Text("Mercury.Homebrew",
          style: h5ExtraBold.copyWith(color: AppColor.black)));
}

const String shopAddress =
    "Số 9 ngõ 31 Phan Đình Giót, Thanh Liệt, Thanh Xuân, Hà Nội";
