import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/create_invoice_row.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar.dart';
import 'package:mercury/feature/presentations/widget/chart/chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DashboardPage();
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.blue,
        centerTitle: true,
        title: Text(
          "Mercury.Homebrew",
          style: h6ExtraBold.copyWith(color: AppColor.white),
        ),
      ),
      body: SingleChildScrollView(
        child: _body(context),
      ),
    );
  }

  Widget _chart() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return AppChart(
          maxY: 5,
          items: state.chartOfMonth,
        );
      },
    );
  }

  Widget _body(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(
          //   "Mercury.Homebrew",
          //   style: h5Bold.copyWith(color: AppColor.darkRed),
          // ),
          // const SizedBox(height: 20),
          const OverViewBar(),
          const CreateInvoiceRow(),
          _chart(),
          // Container(
          //   decoration: BoxDecoration(
          //     color: AppColor.white,
          //     borderRadius: AppContainerBorder.radius6,
          //     boxShadow: defaultBoxShadow,
          //   ),
          //   child: const Chart(),
          // ),
        ],
      ),
    );
  }
}
