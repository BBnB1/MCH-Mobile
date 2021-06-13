import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

var maskFormatter = new MaskTextInputFormatter(
    mask: '+7 (###) ###-####', filter: {"#": RegExp(r'[0-9]')});

class SignPage extends StatefulWidget {
  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _logincontroller = TextEditingController();
    final TextEditingController _passwordcontroller = TextEditingController();

    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 90, left: 70, right: 70),
            child: Image.asset(
              'assets/images/Logo.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 60, left: 55, right: 70, bottom: 50),
            child: Image.asset(
              'assets/images/Welcome.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 80),
                      child: Text(
                        'Войти',
                        style: TextStyle(
                          color: Color(0xFF16FF00),
                          fontSize: 27,
                        ),
                      ),
                    ),
                    Container(
                        width: 98,
                        margin: const EdgeInsets.only(left: 70, top: 4),
                        child: Image.asset('assets/images/bottom_line.png'))
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 70),
                  child: Text(
                    'Регистрация',
                    style: TextStyle(
                      color: Color(0xFF323232),
                      fontSize: 27,
                    ),
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              child: Text(
                'Авторизация осуществляется с\n использованием учётной записи mos.ru',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xFF7D7D7D), fontSize: 14),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 55, right: 70, top: 40),
            child: TextFormField(
              inputFormatters: [maskFormatter],
              controller: _logincontroller,
              style: TextStyle(
                color: Color(0xFF323232),
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: 'Логин (Телефон, email или СНИЛС)',
                hintStyle: TextStyle(
                  color: Color(0xFF7D7D7D),
                  fontSize: 16,
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF16FF00))),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF7D7D7D)),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 55, right: 70, top: 40),
            child: TextFormField(
              obscureText: true,
              controller: _passwordcontroller,
              style: TextStyle(
                color: Color(0xFF323232),
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: 'Пароль',
                hintStyle: TextStyle(
                  color: Color(0xFF7D7D7D),
                  fontSize: 16,
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF16FF00))),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF7D7D7D)),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: Text(
                'или',
                style: TextStyle(
                  color: Color(0xFF323232),
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 40, bottom: 40),
              width: 300,
              child: Image.asset('assets/images/orLog.png'),
            ),
          ),
          Center(
            child: Container(
              height: 60,
              width: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                  colors: <Color>[Color(0xFF16FF00), Color(0xFF4CFFC9)],
                ),
              ),
              child: TextButton(
                  onPressed: () {}, // Нажатие на войти
                  child: Text(
                    'Войти',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF323232),
                      fontSize: 18,
                    ),
                  )),
            ),
          )
        ],
      ),
    ));
  }
}
