import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/cubit/state/state.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../widget/button/button.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SaleReportBloc>();
    void onSubmit() {
      final cubit = context.read<SaleReportCubit>();
      final start =
          cubit.state.startDate?.copyWith(hour: 0, minute: 0, second: 1);
      final end =
          cubit.state.endDate?.copyWith(hour: 23, minute: 59, second: 59);
      bloc.add(SaleReportEvent.getSales(start!, end!));
    }

    return BlocBuilder<SaleReportCubit, SaleReportState>(
      builder: (context, state) {
        bool isActive = (state.startDate != null) && (state.endDate != null);
        return AppButton(
          label: "Xác nhận",
          buttonSize: ButtonSize.SIZE_24,
          onTap: isActive ? onSubmit : null,
          textColor: isActive ? AppColor.white : AppColor.grey5,
          borderColor: isActive ? AppColor.blue : AppColor.grey3,
          backgroundColor: isActive ? AppColor.blue : AppColor.grey3,
        );
      },
    );
  }
}
