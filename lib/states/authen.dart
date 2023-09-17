import 'package:flutter/material.dart';
import 'package:ungmonitordata/utility/app_constant.dart';
import 'package:ungmonitordata/utility/app_service.dart';
import 'package:ungmonitordata/utility/app_snackbar.dart';
import 'package:ungmonitordata/widgets/widget_button.dart';
import 'package:ungmonitordata/widgets/widget_form.dart';
import 'package:ungmonitordata/widgets/widget_image_asset.dart';
import 'package:ungmonitordata/widgets/widget_text.dart';

class Authen extends StatefulWidget {
  const Authen({super.key});

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const WidgetImageAsset(
                    size: 80,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  WidgetText(
                    data: 'Monitor\nData',
                    textStyle: AppConstant().h1Style(size: 32),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              WidgetForm(
                textEditingController: textEditingController,
                hint: 'Phone Number',
                textInputType: TextInputType.phone,
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: WidgetButton(
                  label: 'Login',
                  pressFunc: () {
                    if (textEditingController.text.isEmpty) {
                      //Have Space
                      AppSnackBar(
                              title: 'Phone Number ?',
                              message: 'กรุณากรอก เบอร์โทรศัพย์ ด้วยคะ')
                          .errorSanckBar();
                    } else {
                      //No Space
                      if (textEditingController.text.length != 10) {
                        AppSnackBar(
                                title: 'เบอร์ผิด',
                                message: 'เบอร์โทรศัพย์ ควรมี 10 ตัว')
                            .errorSanckBar();
                      } else {
                        //PhoneNumber True
                        AppService().processSentOTP(
                            phoneNumber: textEditingController.text);
                      }
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
