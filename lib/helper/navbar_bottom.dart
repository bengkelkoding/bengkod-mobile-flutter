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
              color: Colors.grey.withOpacity(0.9), // Opasitas warna bayangan
              offset: Offset(0, -4),
              blurRadius: 10, // Tingkat kabur bayangan
              spreadRadius: 2, // Menentukan seberapa jauh bayangan menyebar
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // Tambahkan ini
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
