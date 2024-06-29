import 'package:flutter/material.dart';
import 'package:softtest1/add_plant.dart';
import 'package:softtest1/login_screen.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7F9DA),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(child: Image.asset('assets/log.png')),
              const SizedBox(
                height: 10,
              ),
              const Text('Sign Up',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Name',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      const CustomLogField(
                        hint: 'Enter your Name',
                        icon: Icons.person_2_outlined,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Mobile Number',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      const CustomLogField(
                        hint: 'Enter your Phone',
                        icon: Icons.call,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Email',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      const CustomLogField(
                        hint: 'Enter your Email Id',
                        icon: Icons.email_outlined,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Password',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w400)),
                      const CustomLogField(
                        hint: 'Enter your Password',
                        icon: Icons.lock_outline_rounded,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const CustomButton(name: 'Sign Up'),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'login');
                          },
                          child: const Text('Back to Login',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
