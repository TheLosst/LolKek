import 'package:ebite_menya_semero/Modules/globals.dart';
import 'package:ebite_menya_semero/Modules/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/Push.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guests',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController login = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController password1 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Мохнатые гостиницы"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 60,
              child: TextFormField(
                controller: login,
                maxLength: 32,
                decoration: const InputDecoration(
                  hintText: "Введите имя",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              height: 60,
              child: TextFormField(
                controller: email,
                maxLength: 32,
                decoration: const InputDecoration(
                  hintText: "Введите email",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              height: 60,
              child: TextFormField(
                controller: password,
                maxLength: 32,
                decoration: const InputDecoration(
                  hintText: "Введите пароль",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              height: 60,
              child: TextFormField(
                controller: password,
                maxLength: 32,
                decoration: const InputDecoration(
                  hintText: "Повторите пароль",
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Push().PushTo(const Login(), context);
                      regUser.login = login.text;
                      regUser.email = email.text;
                      regUser.password = password.text;
                      //todo Связь с бд
                    },
                    child: const Text("Регистрация"))),
          ],
        ),
      ),
    );
  }
}
