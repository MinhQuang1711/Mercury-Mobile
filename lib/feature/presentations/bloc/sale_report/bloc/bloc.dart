import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/repositories/i_report.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/bloc/state/state.dart';

class SaleReportBloc extends Bloc<SaleReportEvent, SaleReportBlocState> {
  final IReportRepository repo;
  SaleReportBloc(this.repo) : super(const SaleReportBlocState.init()) {
    on<SaleReportEvent>(_onEvent);
  }

  void _onEvent(SaleReportEvent event, Emitter emitter) async {
    await event.when(
        getSales: (start, end) async => await _getSale(start, end, emitter));
  }

  Future _getSale(DateTime start, DateTime end, Emitter emitter) async {
    (await repo.getSaleReport(end, start)).on(
      whenSuccess: (data) => emitter(SaleReportBlocState.getSaleSuccess(data)),
      whenFaild: (msg) => emitter(SaleReportBlocState.failure(msg)),
    );
  }
}
