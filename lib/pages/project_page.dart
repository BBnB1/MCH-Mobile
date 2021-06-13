import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 55,
                width: 57,
                margin: const EdgeInsets.only(top: 40, left: 40),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/icons/Icon_arrow_left.png'),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 40, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 15),
                              child: GradientText(
                                text: 'Медицина',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                                colors: <Color>[
                                  Color(0xFF16FF00),
                                  Color(0xFF4CFFC9),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                'Ионы Скулачева',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF323232),
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 60, top: 15),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xFF383B4A),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () {}, // Отправить заявку
                            child: Text(
                              'Оставить\nзаявку',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 20, bottom: 30),
                child: Image.asset(
                  'assets/images/Proj_av.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 85,
                width: 500,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Expanded(
                    child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 35,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Color(0xFF383B4A),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Разработчик',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Color(0xFF383B4A),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'CRM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 35,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Color(0xFF383B4A),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'CRM',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 35,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Color(0xFF383B4A),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Разработчик',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 35,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF383B4A),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Разработчик',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 35,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF383B4A),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'CRM',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 35,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF383B4A),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Разработчик',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 35,
                                  width: 170,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF383B4A),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Разработчик',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 30, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 70,
                      width: 70,
                      child: Image.asset(
                        'assets/images/avatar_proj.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(left: 15, top: 5),
                            child: Text(
                              'Лидер проекта',
                              style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 15, top: 5),
                            child: Text(
                              'Иванов Иван Иванович',
                              style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20, left: 80),
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'assets/icons/Icon_mail.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 40),
                margin: const EdgeInsets.only(bottom: 50),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 70,
                      width: 10,
                      child: Image.asset(
                        'assets/images/Pillar_small.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 90),
                      child: Text(
                        'Участники проекта',
                        style: TextStyle(
                          color: Color(0xFF323232),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Image.asset(
                        'assets/icons/Icon_members.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 500,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        height: 50,
                        width: 320,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 24,
                              offset: Offset(4, 9),
                            ),
                          ],
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  bottom: 20, top: 60, left: 30),
                              child: Text(
                                'Технология/продукт',
                                style: TextStyle(
                                  color: Color(0xFF323232),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 30),
                              child: Text(
                                'Цели проекта несет за собой\nинформацию о дате запуска, какие\nресурсы необходимы для развития\nпроекта, план развития, текущее\nсостояние проекта.',
                                style: TextStyle(
                                  color: Color(0xFF323232),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 30, right: 15),
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xFF383B4A),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'desc');
                                  }, 
                                  child: Text(
                                    'Подробнее',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 24,
                                    offset: Offset(4, 9),
                                  ),
                                ],
                                color: Color(0xFFFFFFFF),
                              ),
                        margin: const EdgeInsets.only(right: 20),
                        height: 50,
                        width: 320,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  bottom: 20, top: 60, left: 30),
                              
                              child: Text(
                                'Рынок',
                                style: TextStyle(
                                  color: Color(0xFF323232),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 30),
                              child: Text(
                                'Цели проекта несет за собой\nинформацию о дате запуска, какие\nресурсы необходимы для развития\nпроекта, план развития, текущее\nсостояние проекта.',
                                style: TextStyle(
                                  color: Color(0xFF323232),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 30, right: 15),
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xFF383B4A),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'desc');
                                  }, 
                                  child: Text(
                                    'Подробнее',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 24,
                                    offset: Offset(4, 9),
                                  ),
                                ],
                                color: Color(0xFFFFFFFF),
                              ),
                        margin: const EdgeInsets.only(right: 20),
                        height: 50,
                        width: 320,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  bottom: 20, top: 60, left: 30),
                              
                              child: Text(
                                'О проекте',
                                style: TextStyle(
                                  color: Color(0xFF323232),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 30),
                              child: Text(
                                'Цели проекта несет за собой\nинформацию о дате запуска, какие\nресурсы необходимы для развития\nпроекта, план развития, текущее\nсостояние проекта.',
                                style: TextStyle(
                                  color: Color(0xFF323232),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 30, right: 15),
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xFF383B4A),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'desc');
                                  }, 
                                  child: Text(
                                    'Подробнее',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.25),
                                    spreadRadius: 0,
                                    blurRadius: 24,
                                    offset: Offset(4, 9),
                                  ),
                                ],
                                color: Color(0xFFFFFFFF),
                              ),
                        margin: const EdgeInsets.only(right: 20),
                        height: 50,
                        width: 320,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  bottom: 20, top: 60, left: 30),
                              
                              child: Text(
                                'Развитие и внедрение',
                                style: TextStyle(
                                  color: Color(0xFF323232),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 30),
                              child: Text(
                                'Цели проекта несет за собой\nинформацию о дате запуска, какие\nресурсы необходимы для развития\nпроекта, план развития, текущее\nсостояние проекта.',
                                style: TextStyle(
                                  color: Color(0xFF323232),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 30, right: 15),
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Color(0xFF383B4A),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, 'desc');
                                  }, 
                                  child: Text(
                                    'Подробнее',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(bottom: 50)),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, bottom: 15),
                child: Text(
                  'Дополнительный материал',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  'Можете ознакомиться с дополнительным\nматериалом для получение более детальной\nинформации',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 15, bottom: 50),
                child: Image.asset(
                  'assets/images/Doc.png',
                  fit: BoxFit.fill,
                ),
              ),
              Center(
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 40, right: 40, bottom: 50),
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                    color: Color(0xFF383B4A),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextButton(
                    onPressed: () {}, // Отправить заявку
                    child: Text(
                      'Оставить заявку',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
