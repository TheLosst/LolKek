import 'package:ebite_menya_semero/Modules/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/Push.dart';
import 'globals.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guests',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController login = TextEditingController();
    TextEditingController password = TextEditingController();
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
                child: ElevatedButton(
                    onPressed: () {logUser.login = login.text; logUser.password = password.text;}, child: const Text("Войти"))),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {
                      Push().PushTo(const Register(), context);
                    },
                    child: const Text("Регистрация"))),
          ],
        ),
      ),
    );
  }
}
