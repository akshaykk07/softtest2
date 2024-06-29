import 'package:flutter/material.dart';
import 'package:softtest1/add_plant.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7F9DA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/back.png'),
                Positioned(
                    top: 50,
                    right: 140,
                    child: Center(child: Image.asset('assets/log.png')))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'Welcome To Green Hub',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Login',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            height: 50,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'main');
                              },
                              child: const CustomButton(name: 'Login')),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Create New Account?',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'signup');
                                },
                                child: const Text(' SignUp',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomLogField extends StatelessWidget {
  const CustomLogField({
    super.key,
    required this.hint,
    required this.icon,
  });
  final String hint;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            hintText: hint,
            prefixIcon: Icon(
              icon,
              color: const Color(0xff92D722),
            ),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            filled: true,
            fillColor: const Color(0xffE7F9DA),
          ),
        ),
      ),
    );
  }
}
