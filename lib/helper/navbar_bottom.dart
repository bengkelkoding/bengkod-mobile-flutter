import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavbarBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(27),
        topRight: Radius.circular(27),
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.blackColor.withOpacity(0.20),
              offset: Offset(0, -4),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icon/icon_home_hover.svg'),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icon/icon_classroom.svg'),
              label: 'Kelas',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icon/icon_assigment.svg'),
              label: 'Tugas',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icon/icon_profile.svg'),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
