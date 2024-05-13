import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavbarBottom extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavbarBottom(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(27),
        topRight: Radius.circular(27),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          boxShadow: [
            BoxShadow(
              color: AppColor.blackColor.withOpacity(0.20),
              offset: const Offset(0, -4),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icon/icon_home_hover.svg'),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icon/icon_classroom.svg'),
              label: 'Kelas',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icon/icon_assigment.svg'),
              label: 'Tugas',
            ),
            // BottomNavigationBarItem(
            //   icon: SvgPicture.asset('assets/icon/icon_profile.svg'),
            //   label: 'Profile',
            // ),
          ],
          onTap: onTap,
        ),
      ),
    );
  }
}
