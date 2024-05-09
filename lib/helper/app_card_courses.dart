import 'package:flutter/material.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';

class CustomCourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(17, 77, 145, 0.31),
        border: Border.all(
          color: AppColor.secondPrimaryColor,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Image.asset(
              'assets/image/image_course1.png',
              width: 100,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Beginer',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.secondPrimaryColor,
                  ),
                ),
                Text(
                  'Flutter adalah framework yang....',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.black,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '50%',
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColor.blackColor,
                      ),
                    ),
                    SizedBox(height: 5),
                    Stack(
                      children: [
                        Container(
                          height: 10,
                          width: MediaQueryWidth * 0.5, // Lebar progress bar
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(
                                217, 217, 217, 1), // Warna sisa progress
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          height: 10,
                          width: MediaQueryWidth *
                              0.25, // Ubah lebar progress sesuai dengan persentase
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                AppColor.secondPrimaryColor, // Warna progress
                                AppColor.primaryColor, // Warna progress
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
