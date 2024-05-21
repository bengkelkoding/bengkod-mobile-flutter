import 'package:bengkel_koding_mobile/helper/app_button_onboarding.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Onboarding2Page extends ConsumerStatefulWidget {
  const Onboarding2Page({super.key});

  @override
  ConsumerState<Onboarding2Page> createState() => _Onboarding2PageState();
}

class _Onboarding2PageState extends ConsumerState<Onboarding2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 90,
                  child: SvgPicture.asset("assets/icon/logo_bengkod.svg"),
                ),
                Text(
                  "Bengkel\nKoding.",
                  style: AppTextStyle.textStyle(
                    color: AppColor.secondPrimaryColor,
                    size: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 27),
            Image.asset(
              "assets/image/data_science.gif",
              height: 250,
              width: 290,
            ),
            const SizedBox(height: 22),
            Text(
              "Jangan pernah menutup diri atas ilmu\nbaru, mari kembangkan sayap\npengetahuan lebih banyak",
              style: AppTextStyle2.textStyle(
                size: 16,
                color: AppColor.greyColor,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => context.pop("/"),
                  child: Container(
                    width: 22,
                    height: 17,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.greyGradientBlue,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 64,
                  height: 17,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.primaryColor,
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () => context.push("/onboarding3"),
                  child: Container(
                    width: 22,
                    height: 17,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.greyGradientBlue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: GestureDetector(
                  onTap: () => context.push("/onboarding3"),
                  child: AppButtonOnboarding(
                    color: AppColor.primaryColor,
                    content: Text(
                      "Lanjut",
                      style: AppTextStyle.textStyle(
                        size: 20,
                        color: AppColor.whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    height: 45,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
