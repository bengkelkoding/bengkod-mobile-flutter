import 'package:bengkel_koding_mobile/helper/navbar_bottom.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQueryHeight * 0.17),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Image.asset('assets/image/header_bengkod.png',
                    fit: BoxFit.cover, width: 150),
                // Add other widgets as needed to match the design in the image
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text('Ini adalah halaman beranda'),
      ),
      bottomNavigationBar: NavbarBottom(),
    );
  }
}
