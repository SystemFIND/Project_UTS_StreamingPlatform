import 'package:flutter/material.dart';
import 'package:prototype/presentation/payment_succesful_popup_dialog/payment_succesful_popup_dialog.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'widgets/paymentmethod_item_widget.dart';

class PaymentMethodScreen extends StatefulWidget {
  PaymentMethodScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  TextEditingController inputsfiedoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 22.h),
          child: Column(
            children: [
              _buildOrderSummary(context),
              SizedBox(height: 34.h),
              _buildPaymentMethod(context),
              SizedBox(height: 4.h)
            ],
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Container()],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 50.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 7.h,
          bottom: 11.h,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _buildOrderSummary(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order Summary",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(24.h),
            decoration: BoxDecoration(
              color: appTheme.gray900,
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Premium Weekkly",
                                style: CustomTextStyles.titleSmallSemiBold,
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                "Including tax and auto-renew",
                                style: theme.textTheme.labelMedium,
                              )
                            ],
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "\$50",
                              style: CustomTextStyles.headlineSmallBold,
                            ),
                            TextSpan(
                              text: "/week",
                              style: theme.textTheme.labelMedium,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          controller: inputsfiedoneController,
                          hintText: "Have a Voucher code ?",
                          hintStyle: CustomTextStyles.bodySmallPrimaryContainer,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 24.h,
                            vertical: 10.h,
                          ),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillOnError,
                          filled: true,
                          fillColor: theme.colorScheme.onError,
                        ),
                      ),
                      SizedBox(width: 12.h),
                      CustomElevatedButton(
                        height: 38.h,
                        width: 80.h,
                        text: "Apply",
                        buttonStyle: CustomButtonStyles.fillPrimaryTL18,
                        buttonTextStyle: theme.textTheme.titleSmall!,
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentSuccesfulPopupDialog(),
                            ),
                          ),
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: theme.colorScheme.onPrimary.withOpacity(0.2),
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: CustomTextStyles.titleMedium16,
                      ),
                      Text(
                        "\$50",
                        style: CustomTextStyles.titleLargeBold,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPaymentMethod(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Payment Method",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 14.h),
          ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 16.h,
              );
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return PaymentmethodItemWidget();
            },
          )
        ],
      ),
    );
  }
}
