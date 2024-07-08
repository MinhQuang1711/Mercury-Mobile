import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/enum/screen.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/presentations/bloc/global_cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/get_sale_invoice/cubit.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/get/widget/filter_button.dart';
import 'package:mercury/feature/presentations/widget/button/create_square_button.dart';
import 'package:mercury/feature/presentations/widget/global_listener.dart';

import '../../../bloc/sale_invoice/bloc/bloc.dart';
import 'widget/bloc_listen.dart';
import 'widget/listview.dart';
import 'widget/search_bar.dart';

var defaultSaleInvoiceEvent = SaleInvoiceEvent.get(InvoiceQuery(
  endTime: DateTime.now().copyWith(hour: 23, minute: 59, second: 59),
  startTime: DateTime.now().copyWith(hour: 0, minute: 0, second: 1),
));

class SaleInvoiceScreen extends StatelessWidget {
  const SaleInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt.get<SaleInvoiceBloc>()..add(defaultSaleInvoiceEvent),
        ),
        BlocProvider(create: (_) => getIt.get<GetSaleInvoiceCubit>()),
      ],
      child: const SaleInvoicePage(),
    );
  }
}

class SaleInvoicePage extends StatelessWidget {
  const SaleInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SaleInvoiceBloc>();
    void onTapCreateButton() {
      context.pushAndListen(
        location: AppPath.createSaleInvoice,
        handleWhenHasValue: () {
          bloc.add(defaultSaleInvoiceEvent);
          context.read<GlobalCubit>().changedReloadDashboard();
        },
      );
    }

    void onTapFilter() async {
      var result = await context.showAppDateRangePicker();
      if (result != null) {
        var dto = InvoiceQuery(startTime: result.start, endTime: result.end);
        bloc.add(SaleInvoiceEvent.get(dto));
      }
    }

    return GlobalListenerWidget(
      screenEnum: ScreenEnum.SALE_INVOICE,
      functionReload: () => bloc.add(defaultSaleInvoiceEvent),
      child: SaleInvoiceBlocListenWidget(
        child: Column(
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                CreateSquareButton(onTap: onTapCreateButton),
                const SaleInvoiceSearchBar(),
              ],
            ),
            Padding(
              padding: AppPadding.padding12,
              child: Row(
                children: [
                  Expanded(child: SaleInvoiceFilterButton(onTap: onTapFilter)),
                  BlocBuilder<SaleInvoiceBloc, SaleInvoiceState>(
                    builder: (context, state) {
                      var metaData =
                          state.whenOrNull(got: (_, pagedList) => pagedList);

                      return Column(
                        children: [
                          RichText(
                            text: TextSpan(
                                text: "Tổng tiền hàng: ",
                                style: detailRegular.copyWith(
                                    color: AppColor.grey5),
                                children: [
                                  TextSpan(
                                      text: (metaData?.totalCount ?? 0)
                                          .toString(),
                                      style: detailBold.copyWith(
                                          color: AppColor.blue))
                                ]),
                          ),
                          const SizedBox(height: 2),
                          RichText(
                            text: TextSpan(
                                text: (metaData?.totalCount ?? 0).toString(),
                                style:
                                    detailBold.copyWith(color: AppColor.blue),
                                children: [
                                  TextSpan(
                                      text: " hóa đơn",
                                      style: detailRegular.copyWith(
                                          color: AppColor.grey5))
                                ]),
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 8,
            ),
            // ItemFilterOfSaleInvoice(),
            const ListSaleInvoice(),
          ],
        ),
      ),
    );
  }
}
