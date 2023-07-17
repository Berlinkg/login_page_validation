import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LogonPage extends StatefulWidget {
  const LogonPage({Key? key}) : super(key: key);
  // Added the correct syntax for the constructor

  @override
  State<LogonPage> createState() => _LogonPageState();
}

class _LogonPageState extends State<LogonPage> {
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 240),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                const Text(
                  'Log in',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.9)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: Column(
                    children: [
                      const ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('lib/images/1.jpg'),
                        ),
                        title: Text("jone"),
                        subtitle: Text('Gmail@.com'),
                      ),
                      const Gap(20),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        width: double.infinity,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          obscureText: hidden,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                hidden
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: const Color(0xff02c38e),
                              ),
                              onPressed: () {
                                setState(() {
                                  hidden = !hidden;
                                });
                              },
                            ),
                            hintText: "password",
                            hintStyle: const TextStyle(color: Colors.black),
                            border: InputBorder.none,
                          ),
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      const Gap(20),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xff02c38e),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            "continiu",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Gap(20),
                      const Text(
                        'forget your password ?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
