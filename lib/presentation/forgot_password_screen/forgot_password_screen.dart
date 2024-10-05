import 'package:flutter/material.dart';
import 'package:streaming_platform/presentation/otp_verification_screen/otp_verification_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatefulWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailInputController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

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
                  vertical: 220.h,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot Password?",
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "You forgot your password? don't worry, please enter your recovery email address",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.50,
                        ),
                      ),
                      SizedBox(height: 44.h),
                      CustomTextFormField(
                        controller: emailInputController,
                        hintText: "Email Address",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                        contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 22.h),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email cannot be empty';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 30.h),
                      CustomElevatedButton(
                        text: "Submit",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OtpVerificationScreen(),
                              ),
                            );
                          }
                        },
                      ),
                      SizedBox(height: 4.h)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the otpVerificationScreen when the action is triggered.
  onTapSubmitButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpVerificationScreen);
  }
}
