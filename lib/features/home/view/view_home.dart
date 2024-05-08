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
                Container(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Teks Hi, Fannan Ganteng dan Ayo Kembangkan bakat kodingmu
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Fannan Ganteng...',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          SizedBox(height: 2), // Jarak antara dua teks
                          Text(
                            'Ayo Kembangkan bakat kodingmu',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      //
                      //Circular Avatar

                      Transform.scale(
                        scale: 1.85,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade400,
                          backgroundImage:
                              AssetImage("assets/image/profile_picture.png"),
                        ),
                      ),
                    ],
                  ),
                )
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
