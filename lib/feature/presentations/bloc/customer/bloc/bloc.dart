import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/customer/customer_request.dart';
import 'package:mercury/feature/domain/repositories/i_customer.dart';
import 'package:mercury/feature/presentations/bloc/customer/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/customer/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final ICustomerRepository repo;
  CustomerBloc(this.repo) : super(const CustomerState.init()) {
    on<CustomerEvent>(_onEvent);
  }

  void _onEvent(CustomerEvent event, Emitter emitter) async {
    event.when(
      get: (_) {},
      create: (dto) async => await _create(dto, emitter),
    );
  }

  Future _create(CustomerRequest request, Emitter emitter) async {
    emitter(const CustomerState.loading());
    (await repo.create(request)).on(
      whenSuccess: (data) =>
          emitter(CustomerState.success(CreateScreen().getMessage())),
      whenFaild: (msg) => emitter(CustomerState.failure(msg)),
    );
  }
}
