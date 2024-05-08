import 'package:bengkel_koding_mobile/features/home/view/view_home.dart';
import 'package:bengkel_koding_mobile/helper/app_button.dart';
import 'package:bengkel_koding_mobile/helper/app_text_field_form.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
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
              SizedBox(height: 42),
              AppTextFieldForm(TextEditingController(),
                  func: (value) {},
                  hintText: "Masukan Username",
                  obscureText: false,
                  text: "Username",
                  icon: "assets/icon/icon_user.svg"),
              SizedBox(height: 10),
              AppTextFieldForm(
                TextEditingController(),
                func: (value) {},
                hintText: "Masukan Password",
                obscureText: true,
                text: "Password",
                icon: "assets/icon/icon_password.svg",
              ),
              SizedBox(height: 13),
              GestureDetector(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Lupa kata sandi?",
                    style: AppTextStyle.textStyle(
                      color: AppColor.secondPrimaryColor,
                      size: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeView(),
                  ),
                ),
                child: AppButton(
                  color: AppColor.primaryColor,
                  content: Text(
                    "Masuk",
                    style: AppTextStyle.textStyle(
                      size: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColor.whiteColor,
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        color: AppColor.blackColor.withOpacity(0.25)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
