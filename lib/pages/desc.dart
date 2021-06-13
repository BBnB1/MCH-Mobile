import 'package:flutter/material.dart';

TabController _controller;

class DescPage extends StatefulWidget {
  @override
  _DescPageState createState() => _DescPageState();
}

class _DescPageState extends State<DescPage> with TickerProviderStateMixin {
  void initState() {
    super.initState();

    _controller = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF16FF00), Color(0xFF4CFFC9)],
    ).createShader(new Rect.fromLTWH(50.0, 0.0, 300.0, 50.0));

    return Scaffold(
      body: SafeArea(
        child: Column(
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
            SizedBox(
              child: Container(
                margin: const EdgeInsets.only(left: 40),
                child: TabBar(
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(right: 30, top: 10),
                  controller: _controller,
                  unselectedLabelColor: Color(0xFF7D7D7D),
                  labelStyle: TextStyle(
                      fontSize: 15,
                      foreground: Paint()..shader = linearGradient),
                  unselectedLabelStyle: TextStyle(color: Color(0xFF7D7D7D)),
                  indicatorColor: Colors.transparent,
                  tabs: <Widget>[
                    Tab(
                      text: 'Технология/продукт',
                    ),
                    Tab(
                      text: 'Рынок',
                    ),
                    Tab(
                      text: 'О проекте',
                    ),
                    Tab(
                      text: 'Развитие и внедрение',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 40),
                width: 400,
                child: TabBarView(controller: _controller, children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'ТЕХНОЛОГИЯ/ПРОДУКТ',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Описание',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Мы создали новую формулу летающего\nавтомобиля, которая объединяет все\nпреимущества в одной концепции: «Удобство.\nБезопасность. Скорость». Мы реализовали эту\nформулу на практике, доказав ее легитимность.',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Стадия готовности',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Демонстрационный образец',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Уникальное преимущество',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Летающий автомобиль, нет аналогов в мире',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Интеллектуальная собственность',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Наличие патентов на изобретения',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Expanded(
                        child: ListView(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'РЫНОК',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Потребность/проблема',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Создание надёжного безопасного беспилотного пассажирского решения для будущих систем городской воздушной мобильности. Существующие решения – вертолёты, требуют высокой квалификации пилотов и инфраструктуры, дорогие, шумные, сложные в обслуживании – применение в городах ограничено Наиболее важными из особенности развития мирового рынка вертолетной техники в сравнении с современными мультикоптерами: Приоритетность использования различных видов транспорта зависит от дальности перевозки пассажиров для авиации максимальная эффективность соответствует дальности 4-12 тыс. км. Для вертолетов максимальная эффективность соответствует дальности 300-600 км а для грузовых дронов очевидно эффективная дальность транспорта составит 150-250 км Затраты времени на транспортировку пассажиров и грузов для дронов на 30% ниже по сравнению с наземными такси, а доступность использования в ограниченном пространстве мегаполисов увеличивается на несколько порядков Затраты финансовых ресурсов на транспортировку пассажиров составляют на 30% меньше в стоимости километра чем для вертолетов при стоимости владения в два раза ниже. Затраты человеческих ресурсов на перевозку грузов смещены в сторону эксплуатации грузовых дронов, поскольку для управления грузовыми дронами не требуется пилот Тем самым рынок грузовых дронов с полезной нагрузкой по транспорту до 200 кг будет забирать потребителей у рынка легких вертолетов в сегменте коротких дистанций при недоступности других видов транспорта. При снижении барьеров применения грузовых дронов определяющим направлением развития станет рынок такси в мегаполисах.',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Рыночное применение',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Создание компактного беспилотного летательного аппарата по размерным стандартам автомобилестроения, для многофункционального применения, включая удовлетворение рынка пассажирских перевозок в мегаполисах с загруженной наземной инфраструктурой, формируя новый рынок воздушных перевозок, более широкий чем рынок вертолетных перевозок.',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Емкость рынка и целевые потребители',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Рынок городской воздушной мобильности В 2018 году мировой рынок городской воздушной мобильности оценивался в 5,4 миллиарда долларов США, и ожидается, что к 2027 году он превысит 14,6 миллиарда долларов США. Ожидается, что CAGR рынка составит около 11,23%, то есть в 2019-2027 годах, в связи с растущим спросом. для беспилотных летательных аппаратов коммерческого и гражданского назначения и растущей потребности в эффективных перевозках. По оценке Airbus, рынок городской воздушной мобильности составит порядка 50 млрд к 2030, половина которого – непосредственно создание летательных аппаратов По оценке аналитиков банка Morgan Stanley, к 2040 году рынок городских авиаперевозок будет иметь оборот от 0.6 до 2,9 триллиона долларов в год, из которых по оптимистичному сценарию 1,9 трлн – приходится именно на пассажирские авиаперевозки Hoversurf ориентируется на рынок летательных аппаратов для городской воздушной мобильности (от 25 млрд в год к 2030 г). В первую очередь компания ориентируется на российский рынок – создание системы городской воздушной мобильности в Москве. Оценка емкости рынка Москвы на 2025 год – 37-74 млн  (аэротакси между аэропортами и городом) В дальнейшем – масштабирование на зарубежные рынки, обеспечение городской воздушной мобильности в «мегагородах» по всему миру.',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Конкуренты',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 100),
                          child: Text(
                            'E-Hang, Lilium, Volocopter',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'О ПРОЕКТЕ',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Дата запуска',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            '4 квартал 2019 года',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Лидеры и их опыт',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Атаманов Александр Викторович, серийный предприниматель Денис Саитгариев, старший промышленный дизайнер и инженер Барковский Владимир Иванович, научно-технический советник',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Ресурсы и инфраструктура',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Собственные ресурсы',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Партнёры',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Сколково',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Текущее состояние',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Наличие опытного образца',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'РАЗВИТИЕ И ВНЕДРЕНИЕ',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 24,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Модель внедрения',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Не установлено',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'План развития',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Не установлено',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Потребности',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            'Требуется площадка для пилотирования\nПартнер\n180 млн.р.',
                            style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
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
