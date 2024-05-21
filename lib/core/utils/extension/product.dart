import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/data/model/product/product.dart';

extension ProductEx on Product {
  double caculatePercentCost() {
    return ((sumCost ?? 1) / (salePrice ?? 1)) * 100;
  }

  Color? getColorOfPercenCost() {
    double percentCost = caculatePercentCost();
    if (percentCost > 45) {
      return AppColor.red;
    }
    return AppColor.green;
  }
}
