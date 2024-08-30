import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/bloc/state/state.dart';

class SaleReportBloc extends Bloc<SaleReportEvent, SaleReportBlocState> {
  SaleReportBloc() : super(const SaleReportBlocState.init());
}
