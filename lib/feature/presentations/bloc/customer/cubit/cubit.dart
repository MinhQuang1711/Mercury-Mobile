import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/domain/model/customer/customer_request.dart';
import 'package:mercury/feature/presentations/bloc/customer/cubit/state/state.dart';

class CommonCustomerCubit extends Cubit<CommonCustomerState> {
  CommonCustomerCubit() : super(const CommonCustomerState(CustomerRequest()));

  void changedName(String? val) {
    emit(state.copyWith(request: state.request.copyWith(name: val)));
  }

  void changedPhoneNumber(String? val) {
    emit(state.copyWith(request: state.request.copyWith(phoneNumber: val)));
  }

  void selectBirthDay(BuildContext context) async {
    DateTime? date = await context.showAppDatePicker(
      firstDate: DateTime(1990),
      initDate: state.request.birthDay,
    );
    emit(state.copyWith(request: state.request.copyWith(birthDay: date)));
  }
}
