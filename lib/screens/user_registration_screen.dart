import 'package:axis_mobile/constants/colors.dart';
import 'package:axis_mobile/constants/sizes.dart';
import 'package:axis_mobile/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserRegistrationScreen extends StatefulWidget {
  const UserRegistrationScreen({super.key});

  @override
  State<UserRegistrationScreen> createState() => _UserRegistrationScreenState();
}

class _UserRegistrationScreenState extends State<UserRegistrationScreen> {
  bool _isLoginMode = false;

  void _toggleMode() {
    setState(() {
      _isLoginMode = !_isLoginMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseColor,
      appBar: AppBar(
        title: Text(
          _isLoginMode ? 'ログイン' : '会員登録',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.baseColor,
      ),
      body: Padding(
        padding: AppSizes.mediumPadding,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            Icon(Icons.line_axis, size: 80, color: AppColors.textColor),
            const SizedBox(height: 40),
            const Spacer(),
            _isLoginMode ? _LoginForm() : _RegistrationForm(),
            const SizedBox(height: 20),
            TextButton(
              onPressed: _toggleMode,
              child: Text(
                _isLoginMode ? '新規登録はこちら' : 'ログインはこちら',
                style: TextStyle(color: AppColors.textColor),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // ゲストログイン処理
              },
              child: Text(
                'ゲストで利用する',
                style: TextStyle(color: AppColors.textColor),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: 'Googleでログイン',
          onPressed: () {
            // ログイン処理
          },
          leadingIcon: SvgPicture.asset('images/google-logo.svg', width: 16),
          borderColor: AppColors.whiteColor,
        ),
        const SizedBox(height: 20),
        CustomButton(
          text: 'Appleでログイン',
          onPressed: () {
            // ログイン処理
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
        const SizedBox(height: 20),
        CustomButton(
          text: 'メールアドレスでログイン',
          onPressed: () {
            // ログイン処理
          },
          borderColor: AppColors.blackColor,
          leadingIcon: SvgPicture.asset('images/email-logo.svg', width: 16),
        ),
      ],
    );
  }
}

class _RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          text: 'Googleではじめる',
          onPressed: () {
            // ログイン処理
          },
          leadingIcon: SvgPicture.asset('images/google-logo.svg', width: 16),
          borderColor: AppColors.whiteColor,
        ),
        const SizedBox(height: 20),
        CustomButton(
          text: 'Appleではじめる',
          onPressed: () {
            // ログイン処理
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
        const SizedBox(height: 20),
        CustomButton(
          text: 'メールアドレスではじめる',
          onPressed: () {
            // ログイン処理
          },
          borderColor: AppColors.blackColor,
          leadingIcon: SvgPicture.asset('images/email-logo.svg', width: 16),
        ),
      ],
    );
  }
}
