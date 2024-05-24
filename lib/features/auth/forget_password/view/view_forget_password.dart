import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../helper/app_button.dart';
import '../../../../helper/app_text_field_form.dart';
import '../../../../utils/app_colors_palette.dart';
import '../../../../utils/app_font_styles.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 111,
                height: 123,
                child: SvgPicture.asset("assets/icon/logo_bengkod.svg"),
              ),
              Text(
                "Bengkel Koding",
                style: AppTextStyle.textStyle(
                  color: AppColor.secondPrimaryColor,
                  size: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 42),
              AppTextFieldForm(
                emailController,
                func: (value) {},
                hintText: "Masukan Email",
                obscureText: false,
                text: "Email",
                icon: "assets/icon/icon_user.svg",
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {},
                child: AppButton(
                  color: AppColor.primaryColor,
                  content: Text(
                    "Send",
                    style: AppTextStyle.textStyle(
                      size: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                      color: AppColor.blackColor.withOpacity(0.25),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
