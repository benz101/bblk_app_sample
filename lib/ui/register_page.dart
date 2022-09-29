import 'dart:ui';

import 'package:bblk_app/helper/box_shadow._helper.dart';
import 'package:bblk_app/helper/color_helper.dart';
import 'package:bblk_app/ui/widget/primary_button.dart';
import 'package:bblk_app/ui/widget/primary_text_input.dart';
import 'package:bblk_app/ui/widget/primary_text_input_with_password.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = '/registerPage';
  RegisterPage({Key? key}) : super(key: key);
  final TextEditingController _controllerInputFirstName =
      TextEditingController(text: '');
   final TextEditingController _controllerInputLastName =
      TextEditingController(text: '');
   final TextEditingController _controllerInputIdCard =
      TextEditingController(text: '');
   final TextEditingController _controllerInputEmail =
      TextEditingController(text: '');
   final TextEditingController _controllerInputPhoneNumber =
      TextEditingController(text: '');
   final TextEditingController _controllerInputPassword =
      TextEditingController(text: '');
  final TextEditingController _controllerInputConfirmPassword =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              _buildTextInputFullName(),
               const SizedBox(
                height: 15,
              ),
              _buildTextInputIDCard(),
              const SizedBox(
                height: 15,
              ),
              _buildTextInputEmail(),
               const SizedBox(
                height: 15,
              ),
              _buildTextInputPhoneNumber(),
              const SizedBox(
                height: 15,
              ),
              _buildTextInputPassword(),
              const SizedBox(
                height: 15,
              ),
              _buildTextInputConfirmPassword(),
               const SizedBox(
                height: 15,
              ),
              _buildButtonLogin(),
               const SizedBox(
                height: 15,
              ),
            ],
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

  Widget _buildTextInputFullName() {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nama Depan',
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
                        controller: _controllerInputFirstName,
                        hintText: 'Masukkan nama depan anda'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nama Belakang',
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
                        controller: _controllerInputLastName,
                        hintText: 'Masukkan nama belakang Anda'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextInputIDCard() {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'No. KTP',
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
                controller: _controllerInputIdCard,
                hintText: 'Masukkan No. KTP anda'),
          ),
        ],
      ),
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

  Widget _buildTextInputPhoneNumber() {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'No. Telpon',
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
                controller: _controllerInputPhoneNumber,
                hintText: 'Masukkan No. Telpon anda'),
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
        const Text(
            'Password',
            textAlign: TextAlign.start,
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
            child: PrimaryTextInputWithPassword(
              controller: _controllerInputPassword,
              hintText: 'Masukkan password anda',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextInputConfirmPassword() {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Konfirmasi Password',
            textAlign: TextAlign.start,
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
            child: PrimaryTextInputWithPassword(
              controller: _controllerInputConfirmPassword,
              hintText: 'Masukkan password anda',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonLogin() {
    return Container(
      width: double.infinity,
      height: 48,
      color: Colors.transparent,
      child: PrimaryButton(
          onPressed: () {},
          text: 'Register',
          icon: const Icon(Icons.arrow_forward)),
    );
  }
}
