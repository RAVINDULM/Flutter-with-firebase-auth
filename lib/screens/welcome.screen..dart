import 'package:flutter/material.dart';
import 'package:googleauth/screens/login.screen.dart';
import 'package:googleauth/screens/register.screen.dart';
import 'package:googleauth/widgets/customized.button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/Logo.png"))),
              )
            ],
          ),

          // SizedBox(height: 20, ),
          Row(
            children: [
              CustomizedButton(
                buttonText: "Sign in",
                textColor: Colors.white,
                buttonColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              CustomizedButton(
                buttonText: "Sign up",
                textColor: Colors.black,
                buttonColor: Colors.white,
                onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Register()),
                  );},
              ),
            ],
          )
        ]),
      ),
    );
  }
}
