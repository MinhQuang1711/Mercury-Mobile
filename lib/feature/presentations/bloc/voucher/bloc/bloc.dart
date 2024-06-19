import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/voucher/voucher.dart';
import 'package:mercury/feature/domain/repositories/i_voucher.dart';
import 'package:mercury/feature/presentations/bloc/voucher/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/voucher/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';

class VoucherBloc extends Bloc<VoucherEvent, VoucherState> {
  final IVoucherRepository repo;
  VoucherBloc(this.repo) : super(const VoucherState.init()) {
    on<VoucherEvent>(_onEvent);
  }

  void _onEvent(VoucherEvent event, Emitter emitter) async {
    await event.when(
      get: (val) {},
      create: (val) async => await _create(val, emitter),
    );
  }

  Future _create(Voucher voucher, Emitter emitter) async {
    emitter(const VoucherState.loading());
    (await repo.create(voucher)).on(
      whenSuccess: (data) =>
          emitter(VoucherState.createSuccess(CreateScreen().getMessage())),
      whenFaild: (msg) => emitter(VoucherState.failure(msg)),
    );
  }
}
