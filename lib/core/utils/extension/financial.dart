import '../../../feature/data/model/financial/financial.dart';

extension FinancialEx on List<Financial> {
  double getMaxValue() {
    double maxRevenue =
        reduce((c, n) => (c.revenue ?? 0) > (n.revenue ?? 0) ? c : n).revenue ??
            0;
    double maxImportPrice =
        reduce((c, n) => (c.importPrice ?? 0) > (n.importPrice ?? 0) ? c : n)
                .importPrice ??
            0;
    return maxImportPrice > maxRevenue ? maxImportPrice : maxRevenue;
  }
}
