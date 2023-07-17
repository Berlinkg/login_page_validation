import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login_page_2/argo_page.dart';


class LoginPageValidation extends StatefulWidget {
  const LoginPageValidation({Key? key}) : super(key: key);

  @override
  State<LoginPageValidation> createState() => _LoginPageValidationState();
}

class _LoginPageValidationState extends State<LoginPageValidation> {
  bool hidden = true;

  static Pattern pattern =
      '^[a-zA-Z0-9.a-zA-Z0-9.!#%&\'*+-/=?^_`{|}~]+@[a-zA-z0-9]+[a-zA-Z]';
  RegExp regExp = RegExp(pattern.toString());

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  void loginValidator() {
    if (email.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email is required')),
      );
    } else if (!regExp.hasMatch(email.text.trim())) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('invalid your password')),
      );
    } else if (password.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password is requrid !')),
      );
    } else if (password.text.trim().length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Password must de a least 8 cheracters long !')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('logoden Succsessvuly !')));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ArgoPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/a.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            margin: const EdgeInsets.only(top: 250),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(.7),
                  Colors.blue.withOpacity(.9)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('lib/images/1.jpg'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Log in',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Gap(20)
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 55,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    controller: email,
                    // obscureText: hidden,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const Gap(20),
                Container(
                  height: 55,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    controller: password,
                    obscureText: hidden,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your Password",
                      hintStyle: const TextStyle(color: Colors.black),
                      suffixIcon: IconButton(
                        icon: Icon(
                          hidden ? Icons.visibility_off : Icons.visibility,
                          color: const Color(0xff02c38e),
                        ),
                        onPressed: () {
                          setState(() {
                            hidden = !hidden;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                GestureDetector(
                  onTap: () {
                    loginValidator();
                  },
                  child: Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        "continue",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                RichText(
                  text: const TextSpan(
                    text: 'Don\'t have an account? ',
                    children: [
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
