import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/ui/price_list/get/widget/listview.dart';
import 'package:mercury/feature/presentations/ui/price_list/get/widget/search_field.dart';

var defultPriceListEvent = const PriceListEvent.get(SearchByName());

class PriceListScreen extends StatelessWidget {
  const PriceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                getIt.get<PriceListBloc>()..add(defultPriceListEvent)),
        BlocProvider(create: (_) => getIt.get<GetPriceListCubit>()),
      ],
      child: const PriceListPage(),
    );
  }
}

class PriceListPage extends StatelessWidget {
  const PriceListPage({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<GetPriceListCubit>();
    return BlocListener<PriceListBloc, PriceListState>(
      listener: (context, state) => state.whenOrNull(
        getSuccessful: (searchDto, paged) => cubit.handleList(
          dto: searchDto,
          pagedList: paged,
        ),
      ),
      child: Scaffold(
        appBar: _appBar(context),
        body: _body(),
      ),
    );
  }

  Column _body() {
    return const Column(
      children: [
        PriceListSearchField(),
        ListPrice(),
      ],
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      backgroundColor: AppColor.blue,
      title: Text(
        "Bảng giá",
        style: h6Bold.copyWith(color: Colors.white),
      ),
    );
  }
}
