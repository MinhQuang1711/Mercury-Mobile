import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/data/model/price_list/price_list.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';

import '../widget/name_field.dart';

class PriceListDetailScreen extends StatelessWidget {
  const PriceListDetailScreen({super.key, required this.priceList});
  final PriceList priceList;

  @override
  Widget build(BuildContext context) {
    return PriceListPage(priceList: priceList);
  }
}

class PriceListPage extends StatelessWidget {
  const PriceListPage({super.key, required this.priceList});
  final PriceList priceList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding16,
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: 500, // Sets the maximum height to 200 pixels
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chi tiết',
                style: h6Bold.copyWith(color: AppColor.blue, fontSize: 22),
              ),
              const Divider(),
              const SizedBox(height: 20),
              NameField(
                readOnly: true,
                init: priceList.name,
              ),
              const SizedBox(height: 15),
              Text(
                'Danh sách sản phẩm',
                style: captionBold.copyWith(color: AppColor.grey5),
              ),
              const SizedBox(height: 10),
              ...priceList.detailPriceList
                      ?.map(
                        (e) => ContainerCard(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.product?.name ?? "",
                                style: captionBold,
                              ),
                              const SizedBox(height: 5),
                              RichText(
                                text: TextSpan(
                                    text: 'Giá bán: ',
                                    style: captionRegular.copyWith(
                                      color: AppColor.grey5,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: (e.product?.salePrice ?? 0)
                                            .formatDouble(),
                                        style: captionMedium.copyWith(
                                            color: AppColor.blue),
                                      )
                                    ]),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList() ??
                  [],
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 70,
                  child: AppButton(
                    label: 'Hủy',
                    onTap: () => context.pop(),
                    buttonSize: ButtonSize.SIZE_24,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
