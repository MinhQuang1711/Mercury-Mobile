import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/price_list_request/price_list_request.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/domain/repositories/i_price_list.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';

class PriceListBloc extends Bloc<PriceListEvent, PriceListState> {
  final IPriceListRepository repo;
  PriceListBloc(this.repo) : super(const PriceListState.init()) {
    on<PriceListEvent>(_onEvent);
  }

  void _onEvent(PriceListEvent event, Emitter emitter) async {
    await event.when(
      delete: (id) {},
      update: (dto) {},
      get: (dto) async => await _get(dto, emitter),
      create: (dto) async => _create(dto, emitter),
    );
  }

  Future _create(PriceListRequest dto, Emitter emitter) async {
    emitter(const PriceListState.loading());
    (await repo.create(dto)).on(
        whenSuccess: (data) =>
            emitter(PriceListState.created(CreateScreen().getMessage())),
        whenFaild: (msg) => emitter(PriceListState.failure(msg)));
  }

  Future _get(SearchByName dto, Emitter emitter) async {
    emitter(const PriceListState.loading());
    (await repo.get(dto)).on(
      whenSuccess: (data) => emitter(PriceListState.getSuccessful(dto, data)),
      whenFaild: (msg) => emitter(PriceListState.failure(msg)),
    );
  }
}
