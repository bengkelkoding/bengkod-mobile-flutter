import 'package:bengkel_koding_mobile/helper/app_button_onboarding.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Onboarding3Page extends ConsumerStatefulWidget {
  const Onboarding3Page({super.key});

  @override
  ConsumerState<Onboarding3Page> createState() => _Onboarding3PageState();
}

class _Onboarding3PageState extends ConsumerState<Onboarding3Page> {
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
              "assets/image/web_dev.gif",
              height: 250,
              width: 290,
            ),
            const SizedBox(height: 22),
            Text(
              "Mari belajar dan tumbuh\nberkembang bersama di ",
              style: AppTextStyle2.textStyle(
                size: 16,
                color: AppColor.greyColor,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Bengkel Koding !",
              style: AppTextStyle2.textStyle(
                size: 16,
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
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
                    width: 30,
                    height: 17,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.greyGradientBlue,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () => context.pop("/onboarding2"),
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
                  width: 57,
                  height: 17,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: AppColor.primaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: GestureDetector(
                  onTap: () => context.push("/login"),
                  child: AppButtonOnboarding(
                    color: AppColor.primaryColor,
                    content: Text(
                      "Mulai",
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
