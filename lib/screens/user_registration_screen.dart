import 'package:axis_mobile/constants/colors.dart';
import 'package:axis_mobile/constants/sizes.dart';
import 'package:axis_mobile/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserRegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseColor,
      appBar: AppBar(
        title: Text('会員登録', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: AppColors.baseColor,
      ),
      body: Padding(
        padding: AppSizes.mediumPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              text: 'Googleではじめる',
              onPressed: () {
                // 登録処理
              },
              leadingIcon: SvgPicture.asset(
                'images/google-logo.svg',
                width: 16,
              ),
              borderColor: AppColors.whiteColor,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Appleではじめる',
              onPressed: () {
                // 登録処理
              },
              backgroundColor: AppColors.blackColor,
              textColor: AppColors.whiteColor,
              leadingIcon: SvgPicture.asset(
                'images/apple-logo.svg',
                width: 16,
                colorFilter: ColorFilter.mode(
                  AppColors.whiteColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'メールアドレスで登録',
              onPressed: () {
                // 登録処理
              },
              borderColor: AppColors.blackColor,
              leadingIcon: SvgPicture.asset(
                'images/email-logo.svg',
                width: 16,
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                'ログインはこちら',
                style: TextStyle(color: AppColors.textColor),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // ユーザー登録なしで進む処理
              },
              child: Text(
                'ユーザー登録なしで進む',
                style: TextStyle(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
