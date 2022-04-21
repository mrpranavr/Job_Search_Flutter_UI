import "package:flutter/material.dart";
import 'package:job/Utils/Themes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (() {
          FocusScope.of(context).requestFocus(FocusNode());
        }),
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'JobSearch',
                style: MainHeading,
              ),
              const SizedBox(
                height: 62,
              ),
              TextField(
                scrollPadding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: 'Enter username',
                  fillColor: Color(0xffE5E5E5),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              TextField(
                scrollPadding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  hintText: 'Enter password',
                  fillColor: Color(0xffE5E5E5),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              ElevatedButton(
                onPressed: () {
                  print("Login here");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: button_gradient,
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New to OnionChat? ',
                    style: TextStyle(
                      fontFamily: MainFontFamily,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff626262),
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      'Sign Up here',
                      style: TextStyle(
                        fontFamily: MainFontFamily,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff4A4A4A),
                      ),
                    ),
                    onTap: () {
                      // Navigator.of(context).pushNamed('/signUp');
                      print('hello');
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
