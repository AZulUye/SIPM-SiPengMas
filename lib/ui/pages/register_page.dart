import 'package:flutter/material.dart';
import 'package:pengabdianmasyarakat/shared/theme.dart';
import 'package:pengabdianmasyarakat/ui/pages/dashboard_page.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_button_1.dart';
import 'package:pengabdianmasyarakat/ui/widgets/custom_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController passwordController2 =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 30),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(75, 0, 0, 0),
              child: Image.asset(
                'assets/images/SIPENGMAS.png',
                width: 240,
                height: 60,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(
          title: 'NetID',
          hintText: 'Enter your NetID here...',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Enter your password here...',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget rePasswordInput() {
        return CustomTextFormField(
          title: 'Re-enter Password',
          hintText: 'Re-enter your password here...',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: 'register',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DashboardPage(),
              ),
            );
          },
          width: 200,
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
            rePasswordInput(),
            SizedBox(
              height: 20,
            ),
            submitButton(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          title(),
          inputSection(),
        ],
      ),
    );
  }
}
