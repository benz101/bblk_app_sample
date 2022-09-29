import 'package:bblk_app/helper/color_helper.dart';
import 'package:bblk_app/ui/profile_and_setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 150,
            ),
            _buildInfoProfile(),
            _buildMenu(context),
            const SizedBox(
              height: 20,
            ),
            _buildButtonLogout(),
             const SizedBox(
              height: 30,
            ),
            _buildFollowUsOn()
          ],
        ),
      ),
    );
  }

  Widget _buildInfoProfile() {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.transparent,
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration:
                BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                    text: 'Angga ',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorHelper.textPrimary),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Praja',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: ColorHelper.textPrimary),
                      )
                    ]),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Membership BBLK',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: ColorHelper.colorPrimary),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Colors.transparent,
        child: Column(
          children: [
            InkWell(
               onTap: (){
                          Navigator.pushNamed(context, ProfileAndSettingPage.routeName);
                        },
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        color: Colors.transparent,
                                      child: const Text(
                      'Profile Saya',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: ColorHelper.greyAltSec),
                                      ),
                                    )),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  child: const Text(
                    'Pengaturan',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: ColorHelper.greyAltSec),
                  ),
                )),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                )
              ],
            )
          ],
        ));
  }

  Widget _buildButtonLogout() {
    return Container(
      width: 131,
      height: 28,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(23),
      ),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23),
              )),
          child: const Text(
            'Logout',
            style: TextStyle(fontSize: 11),
          )),
    );
  }

  Widget _buildFollowUsOn() {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        children: [
          const SizedBox(
            width: 25,
          ),
          const Text(
            'Ikuti kami di',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorHelper.colorPrimary),
          ),
          const SizedBox(
            width: 5,
          ),
          Row(
            children: [
              SvgPicture.asset('assets/images/ic_facebook.svg'),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset('assets/images/ic_instagram.svg'),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset('assets/images/ic_twitter.svg')
            ],
          )
        ],
      ),
    );
  }
}
