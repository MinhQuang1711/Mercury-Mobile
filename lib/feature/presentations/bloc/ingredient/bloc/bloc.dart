import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/domain/repositories/i_ingredient.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/state/state.dart';

class IngredientBloc extends Bloc<IngredientEvent, IngredientState> {
  final IIngredientRepository repo;
  IngredientBloc(this.repo) : super(const IngredientState.init()) {
    on<IngredientEvent>(_onEvent);
  }

  void _onEvent(IngredientEvent event, Emitter emitter) async {
    await event.when(
      get: (dto) async => await _get(dto, emitter),
    );
  }

  Future _get(SearchByName searchByName, Emitter emitter) async {
    emitter(const IngredientState.loading());
    (await repo.get(searchByName: searchByName)).on(
      whenSuccess: (data) => emitter(
        IngredientState.got(
          pagedList: data,
          searchByName: searchByName,
        ),
      ),
      whenFaild: (msg) => emitter(IngredientState.failure(msg)),
    );
  }
}
