import 'package:flutter/material.dart';
import 'package:prototype/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends StatefulWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController passwordInputController = TextEditingController();
  TextEditingController confirmPasswordInputController = TextEditingController();

  bool _isPasswordVisible = false; // For controlling password visibility
  bool _isConfirmPasswordVisible = false; // For controlling confirm password visibility

  final _formKey = GlobalKey<FormState>(); // To manage form validation

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
                  vertical: 194.h,
                ),
                child: Form(
                  key: _formKey, // Wrap fields in a Form widget to use validation
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Reset Password ?",
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 12.h),
                      Text(
                        "Please enter your new password",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          height: 1.50,
                        ),
                      ),
                      SizedBox(height: 46.h),
                      // Password Field
                      CustomTextFormField(
                        controller: passwordInputController,
                        hintText: "Password",
                        textInputType: TextInputType.visiblePassword,
                        obscureText: !_isPasswordVisible, // Control visibility
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password cannot be empty';
                          }
                          return null;
                        },
                        suffix: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible; // Toggle visibility
                            });
                          },
                          child: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey, // Ensure the icon has a visible color
                            size: 24.h,
                          ),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(12.h, 8.h, 20.h, 8.h),
                      ),
                      SizedBox(height: 28.h),
                      // Confirm Password Field
                      CustomTextFormField(
                        controller: confirmPasswordInputController,
                        hintText: "Confirm new password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: !_isConfirmPasswordVisible, // Control visibility
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          if (value != passwordInputController.text) {
                            return 'Passwords do not match';
                          }
                          return null;
                        },
                        suffix: GestureDetector(
                          onTap: () {
                            setState(() {
                              _isConfirmPasswordVisible = !_isConfirmPasswordVisible; // Toggle visibility
                            });
                          },
                          child: Icon(
                            _isConfirmPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey, // Ensure the icon has a visible color
                            size: 24.h,
                          ),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(12.h, 8.h, 20.h, 8.h),
                      ),
                      SizedBox(height: 30.h),
                      // Reset Password Button
                      CustomElevatedButton(
                        text: "Reset Password",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ResetPasswordSuccessScreen(),
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
}
