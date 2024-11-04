import 'package:flutter/material.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/data/model/price_list/price_list.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../../../config/theme/text_style.dart';
import '../../../../widget/card_container.dart';
import '../../detail/detail.dart';

class PriceListCard extends StatelessWidget {
  const PriceListCard({super.key, required this.priceList});
  final PriceList priceList;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.showAppDialog(
          child: PriceListDetailScreen(priceList: priceList)),
      child: ContainerCard(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 15,
              backgroundColor: AppColor.blue.withOpacity(0.1),
              child: const Icon(
                size: 20,
                color: AppColor.blue,
                Icons.bookmark,
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  priceList.name ?? "",
                  style: captionBold,
                ),
                const SizedBox(height: 5),
                Text(
                  "${priceList.detailPriceList?.length ?? 0} sản phẩm",
                  style: captionMedium,
                )
              ],
            ),
            const Spacer(),
            const Icon(Icons.more_vert_outlined),
          ],
        ),
      ),
    );
  }
}
