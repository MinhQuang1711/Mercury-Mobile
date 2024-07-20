import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class SetSalePriceScreen extends StatefulWidget {
  const SetSalePriceScreen({super.key, required this.comboBox});
  final ComboBox comboBox;

  @override
  State<SetSalePriceScreen> createState() => _SetSalePriceScreenState();
}

class _SetSalePriceScreenState extends State<SetSalePriceScreen> {
  final _controller = TextEditingController();
  double getBottomPadding() {
    double bottom = MediaQuery.of(context).viewInsets.bottom;
    return bottom < 12 ? 12 : bottom;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12.copyWith(
        top: 0,
        bottom: getBottomPadding(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _title(),
          const SizedBox(height: 30),
          _prodName(),
          const SizedBox(height: 4),
          _defaultPrice(),
          const SizedBox(height: 15),
          _inputField(),
          const SizedBox(height: 35),
          _button(_controller)
        ],
      ),
    );
  }

  AppTextField _inputField() {
    return AppTextField(
      autoFocus: true,
      controller: _controller,
      hintText: "Nhập giá bán mới",
      textInputType: TextInputType.number,
      sufWidget: Text(
        "VND",
        style: bodyBold.copyWith(color: AppColor.blue),
      ),
    );
  }

  Padding _button(TextEditingController ctrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: AppButton(
        label: "Xác nhận",
        onTap: () => context.pop<double?>(double.tryParse(ctrl.text)),
        buttonSize: ButtonSize.SIZE_24,
      ),
    );
  }

  Text _defaultPrice() {
    return Text(
      "Giá mặc định: ${widget.comboBox.price?.formatDouble()} VND",
      style: captionRegular.copyWith(color: AppColor.grey5),
    );
  }

  Text _prodName() {
    return Text(widget.comboBox.name ?? "",
        style: captionBold.copyWith(color: AppColor.blue));
  }

  Text _title() {
    return const Text(
      "Chỉnh sửa giá sản phẩm",
      style: bodyBold,
    );
  }
}
