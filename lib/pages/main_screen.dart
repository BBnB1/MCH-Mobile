import 'package:flutter/material.dart';

TabController _controller;

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  bool isHint = true;
  bool isLiked = false;
  int hintcount = 0;
  void initState() {
    super.initState();

    _controller = TabController(vsync: this, length: 3);
  }

  void _visibleHint() {
    setState(() {
      isHint = false;
    });
  }

  void _likeSwitch() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF16FF00), Color(0xFF4CFFC9)],
    ).createShader(new Rect.fromLTWH(50.0, 0.0, 300.0, 50.0));

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 40),
              child: Row(children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  margin: const EdgeInsets.only(right: 300, left: 40),
                  child: Image.asset(
                    'assets/icons/barcode.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    'assets/icons/Icon_chat.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.only(left: 130, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 3),
                          width: 50,
                          height: 40,
                          child: Image.asset(
                            'assets/icons/logo_bottom.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    child: Image.asset(
                      'assets/images/Profile_image.png',
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        height: 20,
                        width: 20,
                        child: Image.asset(
                          'assets/icons/Icon_plus.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10,),
                    child: Text(
                      'Проекты физических лиц',
                      style: TextStyle(
                        color: Color(0xFF161925),
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Container(
                child: TabBar(
                  labelPadding: const EdgeInsets.only(right: 5, top: 10),
                  controller: _controller,
                  unselectedLabelColor: Color(0xFF7D7D7D),
                  labelStyle: TextStyle(
                      
                      foreground: Paint()..shader = linearGradient),
                  unselectedLabelStyle: TextStyle(color: Color(0xFF7D7D7D)),
                  indicatorColor: Colors.transparent,
                  tabs: <Widget>[
                    Tab(
                      text: 'Все проекты',
                    ),
                    Tab(
                      text: 'Мои проекты',
                    ),
                    Tab(
                      text: 'Понравившееся',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 40),
                width: 400,
                child: TabBarView(controller: _controller, children: <Widget>[
                  Expanded(
                      child: ListView(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                          
                            height: 180,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.08),
                                    spreadRadius: 0,
                                    blurRadius: 24,
                                    offset: Offset(4, 9)),
                              ],
                              color: Color(0xFFFFFFFF),
                            ),
                            margin: const EdgeInsets.only(bottom: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 180,
                                  child: Image.asset(
                                    'assets/images/Pillar_large.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, top: 5),
                                        child: Text(
                                          'Машиностроение',
                                          style: TextStyle(
                                              color: Color(0xFF16FF00),
                                              fontSize: 14),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 15),
                                        child: Text(
                                          'Дрон-такси «HOVER»',
                                          style: TextStyle(
                                            color: Color(0xFF323232),
                                            fontSize: 18,

                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 15),
                                        child: Text(
                                          'Mы создали новую формулу летающего\nавтомобиля, которая объединяет\nвсе преимущества в одной концепции:\n«Удобство. Безопасность. Скорость». Мы…',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color(0xFF323232),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 10),
                                        child: Text(
                                          'Стадия: Демонстрационный образец',
                                          style: TextStyle(
                                            color: Color(0xFF323232),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Text(
                                          'Потребности: Пилотирование, Партнеры, Инвестиции',
                                          style: TextStyle(
                                            color: Color(0xFF323232),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 50, left: 10),
                                        height: 70,
                                        width: 70,
                                        child: Image.asset(
                                          'assets/images/Logo_proj.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        
                                        height: 45,
                                        width: 45,
                                        child: TextButton(
                                            onPressed: () {
                                              _likeSwitch();
                                            },
                                            child: isLiked == true
                                                ? Image.asset(
                                                    'assets/icons/Icon_heart_active.png')
                                                : Image.asset(
                                                    'assets/icons/Icon_heart.png')),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 170,
                            margin: const EdgeInsets.only(bottom: 20, right: 20),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.08),
                                    spreadRadius: 0,
                                    blurRadius: 24,
                                    offset: Offset(4, 9)),
                              ],
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 170,
                                  child: Image.asset(
                                    'assets/images/Pillar_large.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'project');
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Медицина',
                                            style: TextStyle(
                                                color: Color(0xFF16FF00),
                                                fontSize: 14),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, bottom: 10),
                                          child: Text(
                                            'Ионы Скулачева',
                                            style: TextStyle(
                                              color: Color(0xFF323232),
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, bottom: 10),
                                          child: Text(
                                            'прорывная технология для спасения жизни\nв критических ситуациях, включающих\nтяжелые формы COVID-19, сепсис,\nишемические поражения, травмы и пр. ...',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              color: Color(0xFF323232),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              left: 10, bottom: 5),
                                          child: Text(
                                            'Стадия: Продукт',
                                            style: TextStyle(
                                              color: Color(0xFF323232),
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Потребности: Инвестиции',
                                            style: TextStyle(
                                              color: Color(0xFF323232),
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 40),
                                        height: 70,
                                        width: 70,
                                        child: Image.asset(
                                          'assets/images/Logo_proj1.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 35),
                                        height: 45,
                                        width: 45,
                                        child: TextButton(
                                            onPressed: () {
                                              _likeSwitch();
                                            },
                                            child: isLiked == true
                                                ? Image.asset(
                                                    'assets/icons/Icon_heart_active.png')
                                                : Image.asset(
                                                    'assets/icons/Icon_heart.png')),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            
                            margin: const EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.08),
                                    spreadRadius: 0,
                                    blurRadius: 24,
                                    offset: Offset(4, 9)),
                              ],
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  height: 260,
                                  width: 6,
                                  child: Image.asset(
                                    'assets/images/Pillar_large.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, top: 5),
                                        child: Text(
                                          'Биотех',
                                          style: TextStyle(
                                              color: Color(0xFF16FF00),
                                              fontSize: 14),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 15),
                                        child: Text(
                                          'Моторика - Производство\nвысокотехнологичных\nпротезов рук и разработка\nсистемы обучения\nпользованию',
                                          style: TextStyle(
                                            color: Color(0xFF323232),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 10),
                                        child: Text(
                                          'Исследование и разработка технологии на\nстыке медицины и робототехники с 2014\nгода. Формирование нового отношения к\nпротезированию, внедрение ...',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Color(0xFF323232),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, bottom: 5),
                                        child: Text(
                                          'Стадия: Масштабирование',
                                          style: TextStyle(
                                            color: Color(0xFF323232),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Text(
                                          'Потребности: Партнеры',
                                          style: TextStyle(
                                            color: Color(0xFF323232),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 10),
                                        height: 70,
                                        width: 70,
                                        child: Image.asset(
                                          'assets/images/Logo_proj2.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            top: 130, left: 20),
                                        height: 45,
                                        width: 45,
                                        child: TextButton(
                                            onPressed: () {
                                              _likeSwitch();
                                            },
                                            child: isLiked == true
                                                ? Image.asset(
                                                    'assets/icons/Icon_heart_active.png')
                                                : Image.asset(
                                                    'assets/icons/Icon_heart.png')),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                         
                        ],
                      )
                    ],
                  )),
                  Column(
                    children: [
                      Center(
                        child: Container(
                          height: 200,
                          width: 400,
                          child: TextButton(
                              onPressed: () {}, // Добавление нового объекта
                              child: Container(
                                margin: const EdgeInsets.only(top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 15),
                                        height: 70,
                                        width: 70,
                                        alignment: Alignment.topCenter,
                                        child: Image.asset(
                                          'assets/icons/Icon_add.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // margin: const EdgeInsets.only(right: 55),
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Новых проектов нет,\n чтобы добавить проект\n нажмите на поле',
                                        style: TextStyle(
                                          height: 1.4,
                                          color: Color(0xFF7D7D7D),
                                          fontSize: 14,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Visibility(
                visible: isHint,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/Hint_back.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30, bottom: 15, left: 160),
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Профиль',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 100, top: 15),
                                height: 25,
                                width: 50,
                                child: GestureDetector(
                                  onTap: () {
                                    _visibleHint();
                                  },
                                  child: Image.asset(
                                    'assets/icons/Icon_esc.png',
                                    fit: BoxFit.fill,
                                  ),
                                )),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 70),
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Для перехода на  профиль нажмите на свое\nфото',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            height: 1.4,
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          
                          children: <Widget>[
                            
                            Container(
                                height: 25,
                                width: 50,
                                margin:
                                    const EdgeInsets.only(left: 39, right: 80),
                                child: GestureDetector(
                                  onTap: () {}, // Следующая подсказка
                                  child: Image.asset(
                                    'assets/icons/Icon_arrow_leftHint.png',
                                    fit: BoxFit.fill,
                                  ),
                                )),
                            Container(
                              margin: const EdgeInsets.only(right: 80),
                              height: 10,
                              width: 70,
                              child: Image.asset(
                                'assets/icons/Icon_dorts.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                                height: 25,
                                width: 50,
                                child: GestureDetector(
                                  onTap: () {}, // Следующая подсказка
                                  child: Image.asset(
                                    'assets/icons/Icon_arrow.png',
                                    fit: BoxFit.fill,
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
                    ],
                  ),
                  Container(
                    color: Colors.orange,
                  ),
                ]),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
