import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/cubit/state/state.dart';

import '../../../ui/report/sale_report/view/select_day_sheet.dart';

class SaleReportCubit extends Cubit<SaleReportState> {
  SaleReportCubit() : super(const SaleReportState(null, null));

  void selectStartDate(BuildContext context) async {
    var date = await context.showBottomSheet<DateTime?>(
      SelectDaySheet(initDate: state.startDate),
    );
    emit(state.copyWith(startDate: date));
  }

  void selectEndDate(BuildContext context) async {
    var date = await context.showBottomSheet<DateTime?>(
      SelectDaySheet(initDate: state.endDate),
    );
    emit(state.copyWith(endDate: date));
  }
}
