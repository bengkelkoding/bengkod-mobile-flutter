import 'package:bengkel_koding_mobile/helper/app_text_field_form.dart';
import 'package:bengkel_koding_mobile/utils/app_font_styles.dart';
import 'package:flutter/material.dart';
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
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
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
                icon: "assets/icon/user.svg"),
            SizedBox(height: 10),
            AppTextFieldForm(TextEditingController(),
                func: (value) {},
                hintText: "Masukan Password",
                obscureText: true,
                text: "Password",
                icon: "assets/icon/password.svg"),
          ],
        ),
      ),
    );
  }
}
