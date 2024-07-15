import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/server.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/storage/domain_storage.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class UpdateDomainScreen extends StatefulWidget {
  const UpdateDomainScreen({super.key});

  @override
  State<UpdateDomainScreen> createState() => _UpdateDomainScreenState();
}

class _UpdateDomainScreenState extends State<UpdateDomainScreen> {
  final _controller = TextEditingController();
  void _initDomain() {
    String domain = AppConfig.instance.serverConfig.getDomain;
    _controller.text = domain;
  }

  @override
  void initState() {
    _initDomain();
    super.initState();
  }

  void _submitDomain() {
    context
      ..showSuccesSnackBar("Lưu thành công")
      ..pop();
    String domain = _controller.text;
    DomainStorage.instance.saveDomain(domain);
    // var serverConfig = ServerConfig(domain);
    // AppConfig.instance.configServer(serverConfig);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12.copyWith(bottom: getBottomPadding()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _title(),
          _divider(),
          Row(
            children: [
              _domainField(),
              const SizedBox(width: 10),
              _submitButton(_submitDomain)
            ],
          ),
        ],
      ),
    );
  }

  Expanded _domainField() {
    return Expanded(
        child: AppTextField(
      controller: _controller,
      hintText: "Nhập domain truy cập",
    ));
  }

  Padding _divider() {
    return const Padding(
      padding: EdgeInsets.only(top: 10, bottom: 40),
      child: Divider(),
    );
  }

  Text _title() {
    return const Text(
      "Cập nhật domain truy cập",
      style: bodyBold,
    );
  }

  AppButton _submitButton(Function() onTap) {
    return AppButton(
      onTap: onTap,
      label: "Tiếp tục",
      sufWidget: const Icon(
        Icons.arrow_right_alt_outlined,
        color: AppColor.white,
      ),
    );
  }

  double getBottomPadding() {
    double bottom = MediaQuery.of(context).viewInsets.bottom;
    return bottom < 12 ? 12 : bottom;
  }
}
