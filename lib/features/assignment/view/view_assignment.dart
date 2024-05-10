import 'package:bengkel_koding_mobile/helper/app_button.dart';
import 'package:bengkel_koding_mobile/helper/app_card_dropdown_assigment.dart';
import 'package:flutter/material.dart';

import '../../../helper/navbar_bottom.dart';
import '../../../utils/app_colors_palette.dart';
import '../../../utils/app_font_styles.dart';

class AssignmentView extends StatefulWidget {
  const AssignmentView({super.key});

  @override
  State<AssignmentView> createState() => _AssignmentViewState();
}

class _AssignmentViewState extends State<AssignmentView> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    // ignore: non_constant_identifier_names
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQueryHeight * 0.20),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/image/header_bengkod.png',
                  fit: BoxFit.cover,
                  width: 150,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQueryHeight * 0.35,
                            child: Text('Hi, Fannan Gantengckcokcokc',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: AppTextStyle.textStyle(
                                  size: 24,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.whiteColor,
                                )),
                          ),
                          const SizedBox(height: 2), // Jarak antara dua teks
                          Text(
                            'Ayo Kembangkan bakat kodingmu',
                            style: AppTextStyle.textStyle(
                              size: 12,
                              color: AppColor.whiteColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Transform.scale(
                          scale: 1.80,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade400,
                            backgroundImage: const AssetImage(
                                "assets/image/profile_picture.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SizedBox(
            height: MediaQueryHeight,
            width: MediaQueryWidth,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppButton(
                    height: 37,
                    content: Text(
                      "Penugasan",
                      style: AppTextStyle.textStyle(
                          size: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColor.whiteColor),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Flexible(
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return const AppCardDropdown();
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const NavbarBottom(),
      ),
    );
  }
}
