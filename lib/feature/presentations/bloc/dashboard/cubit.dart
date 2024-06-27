import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/data/model/financial_record/financial_record.dart';
import 'package:mercury/feature/domain/repositories/i_dashboard.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final IDashboardRepository repo;
  DashboardCubit(this.repo)
      : super(const DashboardState(
            chartOfDay: [],
            chartOfMonth: [],
            financial: [],
            financialRecordOfDay: FinancialRecord(),
            financialRecordOfMonth: FinancialRecord()));

  void getChartOfDay() async {
    (await repo.getChartOfDay()).on(
      whenSuccess: (data) => emit(state.copyWith(chartOfDay: data)),
      whenFaild: (msg) {},
    );
  }

  void getChartOfMonth() async {
    (await repo.getChartOfMonth()).on(
      whenSuccess: (data) => emit(state.copyWith(chartOfMonth: data)),
      whenFaild: (msg) {},
    );
  }

  void getfinancialRecordOfDay() async {
    (await repo.financialRecordOfDay()).on(
      whenSuccess: (data) => emit(state.copyWith(financialRecordOfDay: data)),
      whenFaild: (msg) {},
    );
  }

  void getfinancialRecordOfMonth() async {
    (await repo.financialRecordOfMonth()).on(
      whenSuccess: (data) => emit(state.copyWith(financialRecordOfMonth: data)),
      whenFaild: (msg) {},
    );
  }

  void getFinancialOf7Days() async {
    (await repo.financialOf7Days()).on(
      whenSuccess: (data) => emit(state.copyWith(financial: data)),
      whenFaild: (msg) {},
    );
  }
}
