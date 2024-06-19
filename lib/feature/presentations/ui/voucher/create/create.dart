import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/feature/domain/enum/discunt_type.dart';
import 'package:mercury/feature/presentations/ui/voucher/create/widget/create_button.dart';
import 'package:mercury/feature/presentations/ui/voucher/widget/discount_field.dart';
import 'package:mercury/feature/presentations/ui/voucher/widget/discount_type_selection.dart';
import 'package:mercury/feature/presentations/ui/voucher/widget/name_field.dart';

class CreateVoucherScreen extends StatelessWidget {
  const CreateVoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const VoucherNameField(),
          DiscountTypeSelection(onChanged: (val) {}),
          const DiscountField(discountType: DiscountType.PERCENT),
          const SizedBox(height: 30),
          const CreateVoucherButton(),
        ],
      ),
    );
  }
}
