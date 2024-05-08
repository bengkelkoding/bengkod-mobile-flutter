import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavbarBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        selectedItemColor:
            Theme.of(context).primaryColor, // Warna primer untuk item terpilih
        unselectedItemColor:
            Colors.black, // Warna hitam untuk item yang tidak terpilih
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/icon_home.svg'),
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
    );
  }
}
