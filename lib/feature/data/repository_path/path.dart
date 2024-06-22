class AppRepositoryPath {
  static String login = "/api/authen/owner-login";
  static String getUser = "/api/authen/owner";
  static String refreshToken = "/api/authen/refresh-token";

  // Ingredient
  static String getIngredient = "/api/ingredient";
  static String createIngredient = "/api/ingredient/create";
  static String updateIngredient = "/api/ingredient/update";
  static String deleteIngredient = "/api/ingredient/delete";

  // Product
  static String getProduct = "/api/product";
  static String createProduct = "/api/product/create";
  static String deleteProduct = "/api/product/delete";

  // Sale invoice
  static String getSaleInvoice = "/api/sale-invoice";
  static String createSaleInvoice = "/api/sale-invoice/create";
  static String deleteSaleInvoice = "/api/sale-invoice/delete";

  // ComboBox
  static String ingredientComboBox = "/api/ingredient/combo-box";
  static String productComboBox = "/api/product/combo-box";
  static String voucherComboBox = "/api/voucher/combo-box";
  static String customerComboBox = "/api/customer/combo-box";

  // Import invoice
  static String getImportInvoice = "/api/import-invoice";
  static String createImportInvoice = "/api/import-invoice/create";
  static String deleteImportInvoice = "/api/import-invoice/delete";

  // Dashboard
  static String chartOfDay = "/api/dashboard/statistical-product-of-day";
  static String chartOfMonth = "/api/dashboard/statistical-product-of-month";
  static String financialRecordOfDay = "/api/dashboard/bussiness-of-day";
  static String financialRecordOfMonth = "/api/dashboard/bussiness-of-month";

  // Voucher
  static String createVoucher = "/api/voucher/create";
}
