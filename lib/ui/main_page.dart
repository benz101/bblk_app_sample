import 'package:bblk_app/helper/box_shadow._helper.dart';
import 'package:bblk_app/helper/color_helper.dart';
import 'package:bblk_app/ui/widget/drawer_navigation.dart';
import 'package:bblk_app/ui/widget/primary_button.dart';
import 'package:bblk_app/ui/widget/primary_text_input_with_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/mainPage';
  MainPage({Key? key}) : super(key: key);

  final TextEditingController _controllerInputSearch =
      TextEditingController(text: '');

  List<String> listCategoryProduct = ['All Product', 'Layanan Kesehatan','Alat Kesehatan'];

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
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  _buildItemHealthSolution(),
                  const SizedBox(height: 10),
                  _buildItemSpecialService(),
                  const SizedBox(height: 10),
                  _buildItemInspectionTrack(),
                  const SizedBox(height: 10),
                  _buildFilterAndSearch(),
                  const SizedBox(height: 10),
                  _buildListCategoryProduct(context),
                  const SizedBox(height: 10),
                  _buildListProduct(context),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildChoseServiceType(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildListTestPlaceInfo(),
                  const SizedBox(
                    height: 10,
                  ),
                  _buildOtherInfo()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItemHealthSolution() {
    return Container(
      width: double.infinity,
      height: 160,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 130,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.white,
                        Colors.white,
                        ColorHelper.colorGradient
                      ]),
                  boxShadow: BoxShadowHelper.getBoxShadowAlt(),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Solusi, ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: ColorHelper.textPrimary),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Kesehatan Anda',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: ColorHelper.textPrimary),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Update informasi seputar kesehatan\nsemua bisa disini !',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorHelper.textSecondary),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 32,
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 110,
                            height: 32,
                            color: ColorHelper.colorPrimary,
                            child: PrimaryButton(
                              onPressed: () {},
                              text: 'Selengkapnya',
                              textStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                              borderRadius: 8,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              child: Image.asset('assets/images/img_inspection_track.png',
                  fit: BoxFit.fill),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItemSpecialService() {
    return Container(
      width: double.infinity,
      height: 160,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 130,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: BoxShadowHelper.getBoxShadow(),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Layanan Khusus',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: ColorHelper.textPrimary)),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Tes Covid 19, Cegah Corona\n Sedini Mungkin',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorHelper.textSecondary),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        child: const Text(
                          'Daftar Tes',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: ColorHelper.colorPrimary),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: ColorHelper.colorPrimary,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              child: Image.asset(
                'assets/images/img_special_sevice.png',
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItemInspectionTrack() {
    return Container(
      width: double.infinity,
      height: 160,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 130,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: BoxShadowHelper.getBoxShadow(),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 160,
                    color: Colors.transparent,
                    child: const Text('Track Pemeriksaan',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: ColorHelper.textPrimary)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 160,
                    color: Colors.transparent,
                    child: const Text(
                      'Kamu dapat mengecek progress pemeriksaanmu disini',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: ColorHelper.textSecondary),
                    ),
                  ),
                  Container(
                    width: 160,
                    color: Colors.transparent,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: const Text(
                            'Track',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: ColorHelper.colorPrimary),
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: ColorHelper.colorPrimary,
                          size: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20, left: 20),
              child: Image.asset(
                'assets/images/img_health_solution.png',
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFilterAndSearch() {
    return Container(
      width: double.infinity,
      height: 40,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: BoxShadowHelper.getBoxShadow(),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/images/ic_filter.svg',
                width: 20, height: 20),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30),
              boxShadow: BoxShadowHelper.getBoxShadow(),
            ),
            child: PrimaryTextInputWithIcon(
              controller: _controllerInputSearch,
              icon: const Icon(
                Icons.search_rounded,
                color: ColorHelper.colorPrimary,
              ),
              borderRadius: 30,
            ),
          ))
        ],
      ),
    );
  }

  Widget _buildListCategoryProduct(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      color: Colors.transparent,
      child: ListView.builder(
          
          scrollDirection: Axis.horizontal,
          itemCount: listCategoryProduct.length,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          itemBuilder: (context, index) {
            return index == 0
                ? _buildItemCategoryProductIndexZero(listCategoryProduct[index])
                : _buildItemCategoryProduct(listCategoryProduct[index]);
          }),
    );
  }

  Widget _buildItemCategoryProductIndexZero(String categoryProduct) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: ColorHelper.colorPrimary,
          boxShadow: BoxShadowHelper.getBoxShadow(),
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      child: Text(
        categoryProduct,
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    );
  }

  Widget _buildItemCategoryProduct(String categoryProduct) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: BoxShadowHelper.getBoxShadow(),
          borderRadius: BorderRadius.circular(30)),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 5),
      child:  Text(
        categoryProduct,
        style: const TextStyle(
            fontSize: 12, fontWeight: FontWeight.w700, color: Colors.black),
      ),
    );
  }

  Widget _buildListProduct(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 176,
      color: Colors.transparent,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          itemBuilder: (context, index) {
            return index == 0
                ? _buildItemProductIndexZero()
                : _buildItemProduct();
          }),
    );
  }

  Widget _buildItemProductIndexZero() {
    return Container(
      width: 160,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: BoxShadowHelper.getBoxShadow(),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/img_product.png')),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 35,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/ic_star.svg'),
                            const Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: ColorHelper.lightGrey),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.transparent,
                  child: const Text(
                    'Suntik Steril',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorHelper.textPrimary),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: const Text(
                            'Rp. 10.000',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ColorHelper.orange1),
                          ),
                        ),
                      ),
                      Container(
                        height: 18,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: ColorHelper.lightGreen,
                            borderRadius: BorderRadius.circular(4)),
                        child: const Text(
                          'Ready Stok',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: ColorHelper.green70),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItemProduct() {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(left: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: BoxShadowHelper.getBoxShadow(),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/img_product.png')),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 35,
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/images/ic_star.svg'),
                            const Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: ColorHelper.lightGrey),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.transparent,
                  child: const Text(
                    'Suntik Steril',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorHelper.textPrimary),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: const Text(
                            'Rp. 10.000',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: ColorHelper.orange1),
                          ),
                        ),
                      ),
                      Container(
                        height: 18,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: ColorHelper.lightGreen,
                            borderRadius: BorderRadius.circular(4)),
                        child: const Text(
                          'Ready Stok',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: ColorHelper.green70),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildChoseServiceType() {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pilih Tipe Layanan Kesehatan Anda',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorHelper.colorPrimary),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 228,
            height: 34,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: BoxShadowHelper.getBoxShadow(),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                      color: ColorHelper.colorSecondary,
                      boxShadow: BoxShadowHelper.getBoxShadow(),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Satuan',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorHelper.colorPrimary),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  color: Colors.transparent,
                  child: const Text(
                    'Paket Pemeriksaan',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorHelper.colorPrimary),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListTestPlaceInfo() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemBuilder: (context, index) {
          return _buildItemTestPlaceInfo(index);
        });
  }

  Widget _buildItemTestPlaceInfo(int index) {
    return Container(
      width: double.infinity,
      height: 149,
      margin: EdgeInsets.only(top: index == 0 ? 0 : 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: BoxShadowHelper.getBoxShadow()),
      child: Row(
        children: [
          Expanded(
              child: Container(
            color: Colors.transparent,
            height: 149,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'PCR Swab Test (Drive Thru)\nHasil 1 Hari Kerja',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Rp. 1.400.000',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: ColorHelper.orange1),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/images/ic_hospital.svg'),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text('Lenmarc Surabaya',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: ColorHelper.greyAlt)),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/images/ic_location.svg'),
                    const SizedBox(
                      width: 2,
                    ),
                    const Text('Dukuh Pakis, Surabaya',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: ColorHelper.greyAlt)),
                  ],
                )
              ],
            ),
          )),
          Container(
            width: 120,
            height: 149,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset('assets/images/img_place_1.png'),
            ),
          )
        ],
      ),
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
                        Icon(Icons.arrow_forward, color: Colors.white,)
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
