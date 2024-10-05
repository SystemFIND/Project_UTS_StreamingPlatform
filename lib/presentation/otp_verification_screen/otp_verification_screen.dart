import 'package:flutter/material.dart';
import 'package:streaming_platform/presentation/reset_password_screen/reset_password_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_pin_code_text_field.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  String otpCode = ''; // Variable to store the OTP

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 206.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "OTP Verification",
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "6 digit code has been sent to ",
                            style: theme.textTheme.bodyMedium,
                          ),
                          TextSpan(
                            text: "xyz@gmail.com",
                            style: CustomTextStyles.titleSmallPrimaryContainerBold,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 46.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(
                        left: 20.h,
                        right: 18.h,
                      ),
                      child: CustomPinCodeTextField(
                        context: context,
                        onChanged: (value) {
                          setState(() {
                            otpCode = value; // Update OTP code on change
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 32.h),
                    CustomElevatedButton(
                      text: "Verify",
                      onPressed: () {
                        // Check if the OTP is filled
                        if (otpCode.length == 6) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ResetPasswordScreen(),
                            ),
                          );
                        } else {
                          // Show a message if OTP is incomplete
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please enter a valid 6-digit OTP.'),
                            ),
                          );
                        }
                      },
                    ),
                    SizedBox(height: 46.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 76.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn't receive the OTP ?",
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                          SizedBox(width: 4.h),
                          Text(
                            "Resend",
                            style: theme.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.bold, // Make "Resend" bold
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onTapVerifyButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetPasswordScreen);
  }
}
