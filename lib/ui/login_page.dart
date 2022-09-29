import 'dart:io';
import 'dart:ui';

import 'package:bblk_app/helper/box_shadow._helper.dart';
import 'package:bblk_app/helper/color_helper.dart';
import 'package:bblk_app/ui/main_page.dart';
import 'package:bblk_app/ui/register_page.dart';
import 'package:bblk_app/ui/widget/primary_button.dart';
import 'package:bblk_app/ui/widget/primary_text_input.dart';
import 'package:bblk_app/ui/widget/primary_text_input_with_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/loginPage';
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController _controllerInputEmail =
      TextEditingController(text: '');
  final TextEditingController _controllerInputPassword =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exit(0);
      },
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top),
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                _buildLabelWelcome(),
                const SizedBox(
                  height: 15,
                ),
                _buildImageWelcome(),
                const SizedBox(
                  height: 15,
                ),
                _buildTextInputEmail(),
                const SizedBox(
                  height: 15,
                ),
                _buildTextInputPassword(),
                const SizedBox(
                  height: 15,
                ),
                _buildButtonLogin(context),
                const SizedBox(
                  height: 15,
                ),
                _buildNotHaveAccount(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabelWelcome() {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
                text: 'Hai, ',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: ColorHelper.textPrimary),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Selamat Datang',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                        color: ColorHelper.textPrimary),
                  )
                ]),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Silahkan login untuk melanjutkan',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: ColorHelper.textSecondary),
          )
        ],
      ),
    );
  }

  Widget _buildImageWelcome() {
    return Container(
      color: Colors.transparent,
      child: Image.asset('assets/images/img_welcome.png'),
    );
  }

  Widget _buildTextInputEmail() {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorHelper.textPrimary),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.transparent,
                boxShadow: BoxShadowHelper.getBoxShadow()),
            child: PrimaryTextInput(
                controller: _controllerInputEmail,
                hintText: 'Masukkan email anda'),
          ),
        ],
      ),
    );
  }

  Widget _buildTextInputPassword() {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    color: Colors.transparent,
                    child: const Text(
                      'Password',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorHelper.textPrimary),
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.transparent,
                    child: const Text(
                      'Lupa Password anda ?',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorHelper.textSecondary),
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.transparent,
                boxShadow: BoxShadowHelper.getBoxShadow()),
            child: PrimaryTextInputWithPassword(
              controller: _controllerInputPassword,
              hintText: 'Masukkan password anda',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonLogin(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      color: Colors.transparent,
      child: PrimaryButton(
          onPressed: () {
            Navigator.pushNamed(context, MainPage.routeName);
          },
          text: 'Login',
          icon: const Icon(Icons.arrow_forward)),
    );
  }

  Widget _buildNotHaveAccount(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
            text: 'Belum punya akun ? ',
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorHelper.lightGrey),
            children: <TextSpan>[
              TextSpan(
                text: 'Daftar sekarang',
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorHelper.colorPrimary),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, RegisterPage.routeName);
                  },
              ),
            ]),
      ),
    );
  }
}
