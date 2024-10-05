import 'package:flutter/material.dart';
import 'package:streaming_platform/presentation/home_screen/home_screen.dart';
import 'package:streaming_platform/presentation/login_screen/login_screen.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController fullNameInputController = TextEditingController();
  TextEditingController emailInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  bool _isPasswordVisible = false; // Track password visibility

  bool _validateInputs() {
    String fullName = fullNameInputController.text.trim();
    String email = emailInputController.text.trim();
    String password = passwordInputController.text.trim();

    if (fullName.isEmpty || email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in all fields.')),
      );
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 14.h,
            top: 46.h,
            right: 14.h,
          ),
          child: Column(
            children: [
              Text(
                "Sign up",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 44.h),
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildFullNameInput(context),
                    SizedBox(height: 28.h),
                    _buildEmailInput(context),
                    SizedBox(height: 28.h),
                    _buildPasswordInput(context),
                    SizedBox(height: 30.h),
                    _buildSignUpButton(context),
                    SizedBox(height: 32.h),
                    _buildDividerRow(context),
                    SizedBox(height: 30.h),
                    _buildSocialButtonsRow(context),
                    SizedBox(height: 48.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 36.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Do you already have an account?",
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                          SizedBox(width: 4.h),
                          GestureDetector(
                            onTap: () {
                             Navigator.of(context).push(
                                MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Login now",
                              style: TextStyle(
                                color: Colors.white, // White color
                                fontWeight: FontWeight.bold, // Bold text
                                fontSize: 10, // Adjust size as necessary
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.h)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFullNameInput(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameInputController,
      hintText: "Full Name",
      contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 22.h),
    );
  }

  Widget _buildEmailInput(BuildContext context) {
    return CustomTextFormField(
      controller: emailInputController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
      contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 22.h),
    );
  }

  Widget _buildPasswordInput(BuildContext context) {
    return CustomTextFormField(
      controller: passwordInputController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      suffix: GestureDetector(
        onTap: () {
          setState(() {
            _isPasswordVisible = !_isPasswordVisible; // Toggle visibility
          });
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(16.h, 8.h, 20.h, 8.h),
          child: Icon(
            _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            size: 24.h,
            color: Colors.grey, // Icon color
          ),
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 42.h,
      ),
      obscureText: !_isPasswordVisible, // Toggle password visibility
      contentPadding: EdgeInsets.fromLTRB(12.h, 8.h, 20.h, 8.h),
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Sign up",
      onPressed: () {
        if (_validateInputs()) {
          // Perform sign-up action
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        }
      },
    );
  }

  Widget _buildDividerRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Divider(),
            ),
          ),
          SizedBox(width: 14.h),
          Align(
            alignment: Alignment.center,
            child: Text(
              "or",
              style: CustomTextStyles.bodySmallPrimaryContainer,
            ),
          ),
          SizedBox(width: 14.h),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Divider(),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildGoogleButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "Google",
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGoogle3,
            height: 24.h,
            width: 24.h,
            fit: BoxFit.contain,
          ),
        ),
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
        buttonTextStyle: theme.textTheme.bodySmall!,
      ),
    );
  }

  Widget _buildFacebookButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        text: "Facebook",
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFacebook12,
            height: 24.h,
            width: 24.h,
            fit: BoxFit.contain,
          ),
        ),
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
        buttonTextStyle: theme.textTheme.bodySmall!,
      ),
    );
  }

  Widget _buildSocialButtonsRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          _buildGoogleButton(context),
          SizedBox(width: 16.h),
          _buildFacebookButton(context),
        ],
      ),
    );
  }
}
