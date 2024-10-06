import 'package:flutter/material.dart';
import 'package:prototype/presentation/payment_method_screen/payment_method_screen.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ChooseplanlistItemWidget extends StatelessWidget {
  ChooseplanlistItemWidget({Key? key})
      : super(
          key: key,
        );

  TextEditingController voucherInputFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.gray900,
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Voucher",
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 20.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                _buildVoucherInputField(context),
                SizedBox(width: 12.h),
                _buildApplyButton(context),
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section widget
  Widget _buildVoucherInputField(BuildContext context) {
    return Expanded(
      child: CustomTextFormField(
        controller: voucherInputFieldController,
        hintText: "Have a voucher code?",
        hintStyle: CustomTextStyles.bodySmallPrimaryContainer,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 10.h,
        ),
        borderDecoration: TextFormFieldStyleHelper.fillOnError,
        filled: true,
        fillColor: theme.colorScheme.onError,
      ),
    );
  }

  /// Section Widget
  Widget _buildApplyButton(BuildContext context) {
    return CustomElevatedButton(
      height: 38.h,
      width: 80.h,
      text: "Apply",
      buttonStyle: CustomButtonStyles.fillPrimaryTL18,
      buttonTextStyle: theme.textTheme.titleSmall!,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentMethodScreen(),
          ),
        );
      }
    );
  }
}
