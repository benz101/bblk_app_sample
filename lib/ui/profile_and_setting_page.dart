import 'package:bblk_app/helper/box_shadow._helper.dart';
import 'package:bblk_app/helper/color_helper.dart';
import 'package:bblk_app/ui/widget/drawer_navigation.dart';
import 'package:bblk_app/ui/widget/primary_button.dart';
import 'package:bblk_app/ui/widget/primary_text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileAndSettingPage extends StatelessWidget {
  static const routeName = '/profileAndSettingPage';
  ProfileAndSettingPage({Key? key}) : super(key: key);

  final TextEditingController _controllerInputFirstName =
      TextEditingController(text: '');
  final TextEditingController _controllerInputLastName =
      TextEditingController(text: '');
  final TextEditingController _controllerInputEmail =
      TextEditingController(text: '');
  final TextEditingController _controllerInputPhoneNumber =
      TextEditingController(text: '');
  final TextEditingController _controllerInputIdCardNumber =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
         iconTheme:const IconThemeData(color: ColorHelper.colorPrimary),
        title: Container(
          height: 100,
          color: Colors.transparent,
          alignment: Alignment.centerRight,
          child: Container(
              width: 80,
              height: 50,
              color: Colors.transparent,
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/ic_chart.svg'),
                  const SizedBox(width: 20,),
                  SvgPicture.asset('assets/images/ic_notif.svg')
                ],
              )),
        ),
      ),
      drawer: const DrawerNavigation(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorHelper.backgroundAlt,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _buildChooseProfileOrSetting(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: _buildProfileInfo(),
              ),
              const SizedBox(
                height: 20,
              ),
              _buildOtherInfo()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChooseProfileOrSetting() {
    return Container(
      width: 261,
      height: 34,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: BoxShadowHelper.getBoxShadow(),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                  color: ColorHelper.colorSecondary,
                  boxShadow: BoxShadowHelper.getBoxShadow(),
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                'Profile Saya',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorHelper.colorPrimary),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              color: Colors.transparent,
              child: const Text(
                'Pengaturan',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ColorHelper.colorPrimary),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProfileInfo() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            _buildMemberShipInfo(),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  _buildLabelShowData(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildPersonalData(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextInputFirstName(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextInputLastName(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextInputEmail(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextInputPhoneNumber(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildTextInputIdCardNumber(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildInfo(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildButtonSave(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMemberShipInfo() {
    return Container(
      width: double.infinity,
      height: 114,
      decoration: BoxDecoration(
          color: ColorHelper.blueAlt, borderRadius: BorderRadius.circular(30)),
    );
  }

  Widget _buildLabelShowData() {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: const Text(
        'Pilih data yang ingin ditampilkan',
        textAlign: TextAlign.start,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: ColorHelper.colorPrimary),
      ),
    );
  }

  Widget _buildPersonalData() {
    return Container(
        color: Colors.transparent,
        width: double.infinity,
        height: 36,
        child: Row(children: [
          Container(
            width: 36,
            height: 36,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: ColorHelper.colorSecondary, shape: BoxShape.circle),
            child: SvgPicture.asset(
              'assets/images/ic_user_pin.svg',
              width: 20,
              height: 20,
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
                const Text('Data Diri'),
                const Text('Data diri anda sesuai KTP')
              ],
            ),
          )),
          Container(
            width: 36,
            height: 36,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: ColorHelper.lightGrey, shape: BoxShape.circle),
            child: SvgPicture.asset(
              'assets/images/ic_place.svg',
              width: 20,
              height: 20,
            ),
          )
        ]));
  }

  Widget _buildTextInputFirstName() {
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
                controller: _controllerInputFirstName,
                hintText: 'Masukkan nama depan anda'),
          ),
        ],
      ),
    );
  }

  Widget _buildTextInputLastName() {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
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
                hintText: 'Masukkan nama belakang anda'),
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
                hintText: 'Masukkan no telpon anda'),
          ),
        ],
      ),
    );
  }

  Widget _buildTextInputIdCardNumber() {
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
                controller: _controllerInputIdCardNumber,
                hintText: 'Masukkan no KTP anda'),
          ),
        ],
      ),
    );
  }

  Widget _buildInfo() {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        children: [
          SvgPicture.asset('assets/images/ic_info.svg'),
          const SizedBox(
            width: 5,
          ),
          Flexible(
              child: Container(
                  width: double.infinity,
                  child: const Text(
                    'Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorHelper.greyAlt),
                  )))
        ],
      ),
    );
  }

  Widget _buildButtonSave() {
    return Container(
      width: double.infinity,
      height: 48,
      color: Colors.transparent,
      child: PrimaryButton(
          onPressed: () {},
          text: 'Simpan Profile',
          icon: SvgPicture.asset('assets/images/ic_save.svg')),
    );
  }

  Widget _buildOtherInfo() {
    return Container(
      width: double.infinity,
      height: 107,
      color: ColorHelper.blueAlt,
      child: Row(
        children: [
          Expanded(
              child: Container(
            height: 170,
            color: Colors.transparent,
            child: Stack(
              children: [
                Image.asset('assets/images/img_subtract.png'),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Text(
                      'Ingin mendapat update dari kami ?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            height: 170,
            color: Colors.transparent,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        width: 42,
                        height: 42,
                        color: Colors.transparent,
                        margin: const EdgeInsets.only(bottom: 35),
                        child: Image.asset('assets/images/img_ornamen.png'))),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 90,
                    margin: const EdgeInsets.only(right: 15),
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        const Text(
                          'Dapatkan\n notifikasi',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
