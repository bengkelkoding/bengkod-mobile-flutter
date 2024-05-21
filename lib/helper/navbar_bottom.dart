import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavbarBottom extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavbarBottom(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 4, offset: Offset(0, -4)),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(27),
              topRight: Radius.circular(27),
            ),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColor.primaryColor,
              unselectedItemColor: AppColor.blackColor,
              selectedLabelStyle: AppTextStyle.textStyle(
                size: 12.0,
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelStyle: AppTextStyle.textStyle(
                size: 12.0,
                fontWeight: FontWeight.w400,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: currentIndex == 0
                      ? SvgPicture.asset('assets/icon/icon_home_hover.svg')
                      : SvgPicture.asset('assets/icon/icon_home.svg'),
                  label: "Beranda",
                ),
                BottomNavigationBarItem(
                  icon: currentIndex == 1
                      ? SvgPicture.asset('assets/icon/icon_classroom_hover.svg')
                      : SvgPicture.asset('assets/icon/icon_classroom.svg'),
                  label: 'Kelas',
                ),
                BottomNavigationBarItem(
                  icon: currentIndex == 2
                      ? SvgPicture.asset('assets/icon/icon_assigment_hover.svg')
                      : SvgPicture.asset('assets/icon/icon_assigment.svg'),
                  label: 'Tugas',
                ),
                BottomNavigationBarItem(
                  icon: currentIndex == 3
                      ? SvgPicture.asset('assets/icon/icon_profile_hover.svg')
                      : SvgPicture.asset('assets/icon/icon_profile.svg'),
                  label: 'Profile',
                ),
              ],
              onTap: onTap,
            ),
          ),
        ),
        Positioned(
          top: 1,
          left: MediaQuery.of(context).size.width / 4 * currentIndex +
              MediaQuery.of(context).size.width / 8 -
              14,
          child: Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
      ],
    );
  }
}
