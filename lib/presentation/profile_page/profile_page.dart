import 'package:flutter/material.dart';
import 'package:streaming_platform/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:streaming_platform/presentation/history_screen/history_screen.dart';
import 'package:streaming_platform/presentation/no_notification_screen/no_notification_screen.dart';
import 'package:streaming_platform/presentation/setting_screen/setting_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../logout_dialog/logout_dialog.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({Key? key})
  :super(
    key:key,
    );
    
    @override
    Widget build(BuildContext context){
      return SafeArea(
        child:Scaffold(
          appBar: _buildAppBar(context),
          body:Container(
            width:double.maxFinite,
            padding:EdgeInsets.symmetric(
              horizontal:14.h,
              vertical:6.h,
              ),
              child:Column(
                children:[
                  CustomImageView(
                    imagePath:ImageConstant.imgEllipse414,
                    height:84.h,
                    width:84.h,
                    radius:BorderRadius.circular(
                      42.h,
                      ),
                    ),
                    SizedBox(height:14.h),
                    Text(
                      "Antonio Renders",
                      style:CustomTextStyles.titleMediumSemiBold,
                      ),
                      SizedBox(height:2.h),
                      Text(
                        "@renders.antonio",
                        style:CustomTextStyles.labelLargePrimaryContainer,
                        ),
                        SizedBox(height:22.h),
                        SizedBox(
                          width:double.maxFinite,
                          child:Column(
                            children:[
                              _buildProfileSection(context),
                              SizedBox(height:14.h),
                              Container(
                                width:double.maxFinite,
                                margin:EdgeInsets.symmetric(horizontal:10.h),
                                child:_buildHistorySection(
                                  context,
                                  userImage:ImageConstant.imgFrame427319082,
                                  historyText:"Notification",
                                  onTapHistorySection: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NoNotificationScreen(),
                                      ),
                                    );
                                  },                                  
                                ),
                              ),
                                SizedBox(height:24.h),
                                Container(
                                  width:double.maxFinite,
                                  margin:EdgeInsets.symmetric(horizontal:10.h),
                                  child: _buildHistorySection(
                                    context,
                                    userImage:ImageConstant.imgUser,
                                    historyText:"History",
                                    onTapHistorySection: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => HistoryScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                                  SizedBox(height:24.h),
                                  Container(
                                    width:double.maxFinite,
                                    margin:EdgeInsets.symmetric(horizontal:10.h),
                                    child:_buildHistorySection(
                                      context,
                                      userImage:ImageConstant.imgThumbsUpOnprimarycontainer,
                                      historyText:"My Subscription",
                                      ),
                                    ),
                                 SizedBox(height:24.h), 
                                Container(
                                  width:double.maxFinite,
                                  margin:EdgeInsets.symmetric(horizontal:10.h),
                                  child:_buildHistorySection(
                                    context,
                                    userImage:ImageConstant.imgSearch,
                                    historyText:"Setting",
                                    onTapHistorySection: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SettingScreen(),
                                      ),
                                    );
                                  },                                                                    
                                  ),
                                ),
                                  SizedBox(height:24.h),
                                  Container(
                                  width:double.maxFinite,
                                  margin:EdgeInsets.symmetric(horizontal:10.h),
                                  child:_buildHistorySection(
                                    context,
                                    userImage:ImageConstant.imgForward,
                                    historyText:"Logout",
                                    onTapHistorySection: () {
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LogoutDialog(),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                          SizedBox(height:4.h)
                  ],
                ),
            ),
          ),
        );
    }
  
  /// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context){
  return CustomAppBar(
    height:54.h,
    centerTitle:true,
    title:AppbarTitle(
      text:"My Profile",
      ),
     );
    }
    
///Section Widget
Widget _buildProfileSection(BuildContext context){
  return SizedBox(
    width:double.maxFinite,
    child:GestureDetector(
      onTap:() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditProfileScreen(),
          ),
        );
      },
      child:Container(
        padding:EdgeInsets.all(10.h),
        decoration:BoxDecoration(
          color:appTheme.gray900,
          borderRadius:BorderRadiusStyle.roundedBorder14,
          ),
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              CustomImageView(
                imagePath:ImageConstant.imgLock,
                height:40.h,
                width:40.h,
                ),
                Padding(
                  padding:EdgeInsets.only(left:14.h),
                  child:Text(
                    "My Profile",
                    style:theme.textTheme.labelLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath:ImageConstant.imgArrowRight,
                    height:16.h,
                    width:16.h,
                  )
              ],
            ),
        ),
      ),
    );
 }
  
///Common Widget
Widget _buildHistorySection(
  BuildContext context,{
    required String userImage,
    required String historyText,
    Function? onTapHistorySection,
  }){
    return GestureDetector(
      onTap: () {
        onTapHistorySection?.call();
      },
      child:Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
          CustomImageView(
            imagePath:userImage,
            height:40.h,
            width:40.h,
            ),
            Padding(
              padding:EdgeInsets.only(left:14.h),
              child:Text(
                historyText,
                style:theme.textTheme.labelLarge!.copyWith(
                  color:theme.colorScheme.onPrimary.withOpacity(1),
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath:ImageConstant.imgArrowRight,
                height:16.h,
                width:16.h,
              )
          ],
        ),
      );
  }
  

 /// Navigates to the editProfileScreen when the action is triggered
 onTapProfileSection(BuildContext context){
   Navigator.pushNamed(context, AppRoutes.editProfileScreen);
 }
 
///Navigates tothe notificationScreen when the action is triggered
onTapNotificationSection(BuildContext context){
  Navigator.pushNamed(context, AppRoutes.notificationScreen);
}

///Navigates to the settingScreen when the action is triggered
onTapSettingsSection(BuildContext context){
  Navigator.pushNamed(context, AppRoutes.settingScreen);
}

/// Displays a dialog with the [logoutDialog] content.
onTapLogoutSection(BuildContext context){
  showDialog(
    context:context,
    builder:(_) => AlertDialog(
      content:LogoutDialog(),
      backgroundColor:Colors.transparent,
      contentPadding:EdgeInsets.zero,
      insetPadding:EdgeInsets.zero,
      ));
}

  
}

