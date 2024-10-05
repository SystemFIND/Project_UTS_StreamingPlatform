import 'package:flutter/material.dart';
import 'package:streaming_platform/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:streaming_platform/presentation/home_screen/home_screen.dart';
import 'package:streaming_platform/presentation/sign_up_screen/sign_up_screen.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isHoveringSignUp = false; // Track hover state

  bool _validateInputs() {
    String email = emailInputController.text.trim();
    String password = passwordInputController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill in both email and password.')),
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
                "Login",
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 44.h),
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildEmailInput(context),
                    SizedBox(height: 28.h),
                    _buildPasswordInput(context),
                    SizedBox(height: 24.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Forgot Password?",
                          style: CustomTextStyles.titleSmallPrimaryContainer_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 22.h),
                    _buildLoginButton(context),
                    SizedBox(height: 32.h),
                    _buildSeparatorRow(context),
                    SizedBox(height: 30.h),
                    _buildSocialLoginRow(context),
                    SizedBox(height: 48.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Do you already have an account?",
                            style: CustomTextStyles.bodySmallPrimaryContainer,
                          ),
                          SizedBox(width: 2.h),
                          MouseRegion(
                            onEnter: (_) {
                              setState(() {
                                _isHoveringSignUp = true;
                              });
                            },
                            onExit: (_) {
                              setState(() {
                                _isHoveringSignUp = false;
                              });
                            },
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ),
                                );
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 200),
                                decoration: BoxDecoration(
                                  color: _isHoveringSignUp
                                      ? Colors.blue.withOpacity(0.1) // Light blue background on hover
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 2), // Add some padding for better touch area
                                child: Text(
                                  "Sign Up Now",
                                  style: TextStyle(
                                    color: Colors.blue, // Text color
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ),
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

  Widget _buildEmailInput(BuildContext context) {
    return CustomTextFormField(
      controller: emailInputController,
      hintText: "Email Address",
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

  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Login",
      onPressed: () {
        if (_validateInputs()) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        }
      },
    );
  }

  Widget _buildSeparatorRow(BuildContext context) {
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
          ),
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

  Widget _buildSocialLoginRow(BuildContext context) {
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

  onTapForgotpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  onTapTxtSignupnow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
