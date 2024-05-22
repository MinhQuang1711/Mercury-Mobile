import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/product/product_request.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/domain/repositories/i_product.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepository repo;
  ProductBloc(this.repo) : super(const ProductState.init()) {
    on<ProductEvent>(_onEvent);
  }

  void _onEvent(ProductEvent event, Emitter emitter) async {
    await event.when(
      get: (dto) async => await _get(dto, emitter),
      create: (dto) async => await _create(dto, emitter),
    );
  }

  Future _get(SearchByName searchDto, Emitter emitter) async {
    emitter(const ProductState.loading());
    (await repo.getProducts(searchDto)).on(
      whenSuccess: (data) =>
          emitter(ProductState.got(searchByName: searchDto, pagedList: data)),
      whenFaild: (msg) => emitter(ProductState.failure(msg)),
    );
  }

  Future _create(ProductRequest dto, Emitter emitter) async {
    emitter(const ProductState.loading());
    (await repo.create(dto)).on(
      whenSuccess: (data) =>
          emitter(ProductState.created(CreateScreen().getMessage())),
      whenFaild: (msg) => emitter(ProductState.failure(msg)),
    );
  }
}
