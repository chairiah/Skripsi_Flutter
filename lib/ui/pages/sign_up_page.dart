import 'package:aplikasi_skripsi_ch/shared/theme.dart';
import 'package:aplikasi_skripsi_ch/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/ui/widgets/custom_textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        image: const DecorationImage(
          alignment: Alignment.bottomLeft,
          image: AssetImage('assets/images/bg_sign_up.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create Account',
                      style: brownTextStyle.copyWith(
                        fontSize: 30,
                        fontWeight: bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0.0,
                        right: 0.0,
                        top: 50.0,
                        bottom: 25.0,
                      ),
                      child: Column(
                        children: [
                          CustomTextField(
                            prefixIcon: Icon(
                              Icons.person,
                              color: kBrownColor,
                            ),
                            obscureText: false,
                            hinText: 'Username',
                          ),
                          CustomTextField(
                            prefixIcon: Icon(
                              Icons.email,
                              color: kBrownColor,
                            ),
                            obscureText: false,
                            hinText: 'Email',
                          ),
                          CustomTextField(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: kBrownColor,
                            ),
                            obscureText: true,
                            hinText: 'Password',
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      title: 'Sign Up',
                      onPressed: () {
                        Navigator.pushNamed(context, '/sign-in');
                      },
                    ),
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
