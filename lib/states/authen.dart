import 'package:flutter/material.dart';
import 'package:ungmonitordata/utility/app_constant.dart';
import 'package:ungmonitordata/widgets/widget_image_asset.dart';
import 'package:ungmonitordata/widgets/widget_text.dart';

class Authen extends StatelessWidget {
  const Authen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 250,
          child: Row(
            children: [
              const WidgetImageAsset(
                size: 80,
              ),
               const SizedBox(width: 8,),
              WidgetText(
                data: 'Monitor\nData',
                textStyle: AppConstant().h1Style(size: 32),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
