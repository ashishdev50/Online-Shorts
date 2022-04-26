import 'package:flutter/material.dart';
import 'package:tiktok_tutorial/constants.dart';
import 'package:tiktok_tutorial/views/screens/auth/signup_screen.dart';
import 'package:tiktok_tutorial/views/widgets/text_input_field.dart';

import 'bootom_social.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  get isDarkMode => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' Shorts Video ',
              style: TextStyle(
                fontSize: 35,
                color: buttonColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              'Create, Upload , Enjoy ! ',
              style: TextStyle(
                fontSize: 17,
                color: buttonColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _emailController,
                labelText: 'Email',
                icon: Icons.email,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: _passwordController,
                labelText: 'Password',
                icon: Icons.lock,
                isObscure: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: InkWell(
                onTap: () => authController.loginUser(
                  _emailController.text,
                  _passwordController.text,
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignupScreen(),
                    ),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(fontSize: 20, color: buttonColor),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'from Ashish',
                    style: TextStyle(
                      fontSize: 17,
                      color: buttonColor,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  /// My Gmail
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Positioned(
                bottom: 30,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      /// My Gmail
                      bottomSocial(
                          img: "assets/images/gmail.png",
                          url: "https://ashishcharde09@gmail.com",
                          context: context,
                          isDarkMode: isDarkMode),

                      /// My Instagram
                      bottomSocial(
                          img: "assets/images/inst.png",
                          url:
                              "https://instagram.com/1_ashishcharde_?igshid=YmMyMTA2M2Y=",
                          context: context,
                          isDarkMode: isDarkMode),

                      /// My GitHub
                      bottomSocial(
                          img: "assets/images/github.png",
                          url: "https://github.com/ashishdev50",
                          context: context,
                          isDarkMode: isDarkMode),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
