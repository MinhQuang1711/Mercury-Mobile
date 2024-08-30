import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/cubit/state/state.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../widget/button/button.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaleReportCubit, SaleReportState>(
      builder: (context, state) {
        bool isActive = (state.startDate != null) && (state.endDate != null);
        return AppButton(
          label: "Xác nhận",
          buttonSize: ButtonSize.SIZE_24,
          textColor: isActive ? AppColor.white : AppColor.grey5,
          borderColor: isActive ? AppColor.blue : AppColor.grey3,
          backgroundColor: isActive ? AppColor.blue : AppColor.grey3,
        );
      },
    );
  }
}
