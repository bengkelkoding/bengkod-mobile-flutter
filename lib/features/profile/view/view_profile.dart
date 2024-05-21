import 'package:bengkel_koding_mobile/helper/app_button.dart';
import 'package:bengkel_koding_mobile/helper/app_text_field_form.dart';
import 'package:bengkel_koding_mobile/utils/app_colors_palette.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/controller/controller_home.dart';

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ConsumerState<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController =
      TextEditingController();
  bool obscureTextPas = true;
  bool obscureTextNewPas = true;
  bool obscureTextConNewPas = true;

  @override
  Widget build(BuildContext context) {
    final userProfile = ref.read(UserProfile.profileProvider);

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.5,
                    color: AppColor.blackColor,
                  ),
                ),
              ),
              child: Text(
                "Profile",
                textAlign: TextAlign.center,
                style: AppTextStyle.textStyle(
                  size: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColor.blueGradientWhite,
                    child: Image.asset("assets/image/profile_picture.png",
                        fit: BoxFit.fill),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    userProfile.when(
                      data: (profile) => '${profile.name}',
                      loading: () => '',
                      error: (error, stack) => 'Error',
                    ),
                    style: AppTextStyle.textStyle(
                      size: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blackColor,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    userProfile.when(
                      data: (profile) => '${profile.nim} | ${profile.email}',
                      loading: () => '',
                      error: (error, stack) => 'Error',
                    ),
                    style: AppTextStyle.textStyle(
                      size: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColor.blackColor,
                    ),
                  ),
                  const SizedBox(height: 20),
                  AppTextFieldForm(
                    _passwordController,
                    func: (value) {},
                    hintText: "Masukan Password",
                    obscureText: obscureTextPas,
                    text: "Password",
                    icon: "assets/icon/icon_password.svg",
                    suffixIcon: obscureTextPas == false
                        ? "assets/icon/icon_eye_open.svg"
                        : "assets/icon/icon_eye_close.svg",
                    iconFunc: () {
                      setState(() {
                        obscureTextPas = !obscureTextPas;
                      });
                    },
                  ),
                  const SizedBox(height: 11),
                  AppTextFieldForm(
                    _newPasswordController,
                    func: (value) {},
                    hintText: "Masukan Password",
                    obscureText: obscureTextNewPas,
                    text: "Password Baru",
                    icon: "assets/icon/icon_password.svg",
                    suffixIcon: obscureTextNewPas == false
                        ? "assets/icon/icon_eye_open.svg"
                        : "assets/icon/icon_eye_close.svg",
                    iconFunc: () {
                      setState(() {
                        obscureTextNewPas = !obscureTextNewPas;
                      });
                    },
                  ),
                  const SizedBox(height: 11),
                  AppTextFieldForm(
                    _confirmNewPasswordController,
                    func: (value) {},
                    hintText: "Masukan Password",
                    obscureText: obscureTextConNewPas,
                    text: "Password Baru",
                    icon: "assets/icon/icon_password.svg",
                    suffixIcon: obscureTextConNewPas == false
                        ? "assets/icon/icon_eye_open.svg"
                        : "assets/icon/icon_eye_close.svg",
                    iconFunc: () {
                      setState(() {
                        obscureTextConNewPas = !obscureTextConNewPas;
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  AppButton(
                    height: 37,
                    color: AppColor.primaryColor,
                    content: Text(
                      "Submit",
                      style: AppTextStyle.textStyle(
                        size: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  AppButton(
                    height: 37,
                    color: AppColor.thirdPrimaryColor,
                    content: Text(
                      "Logout",
                      style: AppTextStyle.textStyle(
                        size: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
