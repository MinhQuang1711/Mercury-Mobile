import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/financial_record/financial_record.dart';
import 'package:mercury/feature/domain/repositories/i_dashboard.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final IDashboardRepository repo;
  DashboardCubit(this.repo)
      : super(const DashboardState(
            chartOfDay: [],
            chartOfMonth: [],
            financialRecordOfDay: FinancialRecord(),
            financialRecordOfMonth: FinancialRecord()));
}
