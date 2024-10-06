import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_radio_button.dart';

class PaymentmethodItemWidget extends StatefulWidget {
  PaymentmethodItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  State<PaymentmethodItemWidget> createState() => _PaymentmethodItemWidgetState();
}

class _PaymentmethodItemWidgetState extends State<PaymentmethodItemWidget> {
  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGoogle3,
            height: 24.h,
            width: 24.h,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "Google Pay",
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Spacer(),
          CustomRadioButton(
            value: "",
            groupValue: radioGroup,
            onChange: (value) {
              radioGroup = value;
            },
          )
        ],
      ),
    );
  }
}
