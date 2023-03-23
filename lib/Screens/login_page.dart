import 'package:flutter/material.dart';
import 'package:untitled/components/Custom_text_field.dart';

import '../components/Custom_Button.dart';
import 'Chat.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2B475D),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                "assets/images/Logo.jpg",
              ),
            ),
            const Text(
              "GDSC Chat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: "pacifico",
              ),
            ),
            const Spacer(
              flex: 2,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            CustomFormTextField(
              onChanged: (data) {
                email = data;
              },
              hintTaxt: "Email",
            ),
            CustomFormTextField(
              onChanged: (data) {
                password = data;
              },
              hintTaxt: "Password",
            ),
            CustomButton(
              text: "Sign In",
              onTap: () {
                if (email == "gdsc@gmail.com" && password == "gdsc") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Chat(),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "This email not found",
                      ),
                    ),
                  );
                }
              },
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
