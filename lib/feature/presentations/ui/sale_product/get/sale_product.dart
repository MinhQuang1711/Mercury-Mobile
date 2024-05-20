import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/widget/card.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/widget/search_bar.dart';

class SaleProductScreen extends StatelessWidget {
  const SaleProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SaleProductPage();
  }
}

class SaleProductPage extends StatelessWidget {
  const SaleProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SaleProductSearchBar(),
        SizedBox(height: 20),
        SaleProductCard(),
        SaleProductCard(),
        SaleProductCard(),
      ],
    );
  }
}
