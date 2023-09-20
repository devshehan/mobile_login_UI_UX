import 'package:flutter/material.dart';
import 'package:login_ui/components/my_button.dart';
import 'package:login_ui/components/my_textfield.dart';
import 'package:login_ui/components/squre_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {
    // print("button cicked");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),

            // login image
            const Icon(Icons.lock, size: 40,),

            const SizedBox(
              height: 20,
            ),

            //welcome back
            // const Text(
            //   "Lend a paw, Gain a friend",
            //   style: TextStyle(fontSize: 20, color: Colors.grey),
            // ),
            Image.asset('lib/images/slogon.png', height: 25,),

            const SizedBox(
              height: 20,
            ),

            //user name text field
            MyTextField(
                controller: usernameController,
                hintText: "User name",
                obscureText: false),

            const SizedBox(
              height: 8,
            ),

            //password text field
            MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),

            const SizedBox(
              height: 20,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget Password?"),
                ],
              ),
            ),

            const SizedBox(
              height: 25.0,
            ),

            // sign in button
            MyButton(onTap: signUserIn),

            const SizedBox(
              height: 30.0,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey[400],
                    thickness: 1,
                  )),

                  // text
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or continue with",
                    ),
                  ),

                  Expanded(
                      child: Divider(
                    color: Colors.grey[400],
                    thickness: 1,
                  )),
                ],
              ),
            ),

            const SizedBox(
              height: 40,
            ),

            // google and facebook button
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'lib/images/googleIcon.png'),
                SizedBox(
                  width: 20,
                ),
                SquareTile(
                  imagePath: 'lib/images/facebookIcon.png',
                ),
              ],
            ),

            const SizedBox(
              height: 50,
            ),

            // not a member
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account ? "),
                SizedBox(
                  width: 10,
                ),
                Text("Sign Up",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
