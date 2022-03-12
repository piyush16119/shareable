import 'package:flutter/material.dart';
import 'package:oneweb/api_for_dart.dart';
import 'package:oneweb/data.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MirrorState();
}

class _MirrorState extends State<MyApp> {
  bool ltr = true;
  bool tab1hover = false, tab2hover = false, tab3hover = false;
  bool tab1 = true, tab2 = false, tab3 = false;
  late Data data;
  late String language;
  @override
  void initState() {
    super.initState();
    //String language = Localizations.localeOf(context).toString();
    language = 'en_Us';
    ltr = Information.getData(language);
    data = Information.textData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MyApp Image',
          textDirection: ltr ? TextDirection.ltr : TextDirection.rtl,
        ),
        centerTitle: true,
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        child: InkWell(
          onTap: () {
            setState(() {
              language = ltr ? '' : 'en_Us';
              ltr = Information.getData(language);
              data = Information.textData;
            });
          },
          child: const Icon(
            Icons.change_circle_outlined,
            color: Colors.red,
          ),
        ),
      ),
      body: Container(
        color: Colors.black12,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: ltr ? TextDirection.ltr : TextDirection.rtl,
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: 150,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    textDirection: ltr ? TextDirection.ltr : TextDirection.rtl,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.home_outlined,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 5),
                      Text(data.home,
                          textDirection:
                              ltr ? TextDirection.ltr : TextDirection.rtl),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    textDirection: ltr ? TextDirection.ltr : TextDirection.rtl,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.info_outline,
                        color: Colors.blueGrey,
                      ),
                      const SizedBox(width: 5),
                      Text(data.information,
                          textDirection:
                              ltr ? TextDirection.ltr : TextDirection.rtl),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    textDirection: ltr ? TextDirection.ltr : TextDirection.rtl,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.settings,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 5),
                      Text(data.setting,
                          textDirection:
                              ltr ? TextDirection.ltr : TextDirection.rtl),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    textDirection: ltr ? TextDirection.ltr : TextDirection.rtl,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.report_problem_outlined,
                        color: Colors.yellow,
                      ),
                      const SizedBox(width: 5),
                      Text(data.report,
                          textDirection:
                              ltr ? TextDirection.ltr : TextDirection.rtl),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    textDirection: ltr ? TextDirection.ltr : TextDirection.rtl,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      RotatedBox(
                          quarterTurns: ltr ? 0 : 90,
                          child: const Icon(
                            Icons.logout,
                            color: Colors.red,
                          )),
                      const SizedBox(width: 5),
                      Text(data.logout,
                          textDirection:
                              ltr ? TextDirection.ltr : TextDirection.rtl),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  textDirection: ltr ? TextDirection.ltr : TextDirection.rtl,
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                        alignment:
                            ltr ? Alignment.bottomLeft : Alignment.bottomRight,
                        child: Text(
                          data.hotel,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        )),
                    const Divider(),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 30),
                        alignment:
                            ltr ? Alignment.centerLeft : Alignment.centerRight,
                        child: Text(
                          data.image,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 700,
                      height: 200,
                      child: ListView(
                          reverse: ltr ? false : true,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          primary: false,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/hotel1.jfif'),
                                    fit: BoxFit.cover),
                                color: Colors.blue.shade300,
                              ),
                              width: 150,
                              height: 200,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/hotel2.jfif'),
                                    fit: BoxFit.cover),
                                color: Colors.blue.shade300,
                              ),
                              width: 150,
                              height: 200,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/hotel3.jfif'),
                                    fit: BoxFit.cover),
                                color: Colors.blue.shade300,
                              ),
                              width: 150,
                              height: 200,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/hotel4.jfif'),
                                    fit: BoxFit.cover),
                                color: Colors.blue.shade300,
                              ),
                              width: 150,
                              height: 200,
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage('assets/hotel5.jfif'),
                                    fit: BoxFit.cover),
                                color: Colors.blue.shade300,
                              ),
                              width: 150,
                              height: 200,
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 30),
                      alignment:
                          ltr ? Alignment.centerLeft : Alignment.centerRight,
                      child: Text(
                        data.contact,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Wrap(
                      runSpacing: 50,
                      spacing: 50,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 400,
                          height: 100,
                          color: Colors.white,
                          child: Column(
                            textDirection:
                                ltr ? TextDirection.ltr : TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.card1,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                textDirection:
                                    ltr ? TextDirection.ltr : TextDirection.rtl,
                                children: [
                                  RotatedBox(
                                    quarterTurns: ltr ? 0 : 135,
                                    child: const Icon(
                                      Icons.call,
                                      color: Colors.black38,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Text('+91 731 xxxx888'),
                                ],
                              ),
                              Row(
                                textDirection:
                                    ltr ? TextDirection.ltr : TextDirection.rtl,
                                children: [
                                  const Icon(
                                    Icons.mail,
                                    color: Colors.black38,
                                  ),
                                  const SizedBox(width: 20),
                                  Text('${data.email} 1'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 400,
                          height: 100,
                          color: Colors.white,
                          child: Column(
                            textDirection:
                                ltr ? TextDirection.ltr : TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.card2,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                textDirection:
                                    ltr ? TextDirection.ltr : TextDirection.rtl,
                                children:  [
                                  RotatedBox(
                                    quarterTurns: ltr ? 0 : 135,
                                    child: const Icon(
                                      Icons.call,
                                      color: Colors.black38,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Text('1 800 xxxx 333'),
                                ],
                              ),
                              Row(
                                textDirection:
                                    ltr ? TextDirection.ltr : TextDirection.rtl,
                                children: [
                                  const Icon(
                                    Icons.mail,
                                    color: Colors.black38,
                                  ),
                                  const SizedBox(width: 20),
                                  Text('${data.email} 2'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 400,
                          height: 100,
                          color: Colors.white,
                          child: Column(
                            textDirection:
                                ltr ? TextDirection.ltr : TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.card3,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                textDirection:
                                    ltr ? TextDirection.ltr : TextDirection.rtl,
                                children:  [
                                  RotatedBox(
                                    quarterTurns: ltr ? 0 : 135,
                                    child: const Icon(
                                      Icons.call,
                                      color: Colors.black38,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Text('+91 731 xxxx888'),
                                ],
                              ),
                              Row(
                                textDirection:
                                    ltr ? TextDirection.ltr : TextDirection.rtl,
                                children: [
                                  const Icon(
                                    Icons.mail,
                                    color: Colors.black38,
                                  ),
                                  const SizedBox(width: 20),
                                  Text('${data.email} 3'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 400,
                          height: 70,
                          color: Colors.white,
                          child: Column(
                            textDirection:
                                ltr ? TextDirection.ltr : TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.card4,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                textDirection:
                                    ltr ? TextDirection.ltr : TextDirection.rtl,
                                children:  [
                                  RotatedBox(
                                    quarterTurns: ltr ? 0 : 135,
                                    child: const Icon(
                                      Icons.call,
                                      color: Colors.black38,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Text('+91 731 xxxx888'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: 400,
                          height: 70,
                          color: Colors.white,
                          child: Column(
                            textDirection:
                                ltr ? TextDirection.ltr : TextDirection.rtl,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.card5,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                textDirection:
                                    ltr ? TextDirection.ltr : TextDirection.rtl,
                                children:  [
                                  RotatedBox(
                                    quarterTurns: ltr ? 0 : 135,
                                    child: const Icon(
                                      Icons.call,
                                      color: Colors.black38,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const Text('+91 731 xxxx888'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50)
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: 300,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    child: Wrap(
                      textDirection:
                          ltr ? TextDirection.ltr : TextDirection.rtl,
                      alignment: WrapAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              tab1 = true;
                              tab2 = false;
                              tab3 = false;
                            });
                          },
                          onHover: (val) {
                            setState(() {
                              if (val) {
                                tab1hover = true;
                                tab2hover = false;
                                tab3hover = false;
                              } else {
                                tab1hover = false;
                                tab2hover = false;
                                tab3hover = false;
                              }
                            });
                          },
                          child: SizedBox(
                            height: 30,
                            width: 50,
                            child: Column(
                              children: [
                                Text('${data.tab} 1'),
                                const Spacer(),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  color: Colors.blue,
                                  width: tab1 || tab1hover ? 50 : 0,
                                  height: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              tab2 = true;
                              tab3 = false;
                              tab1 = false;
                            });
                          },
                          onHover: (val) {
                            setState(() {
                              if (val) {
                                tab2hover = true;
                                tab1hover = false;
                                tab3hover = false;
                              } else {
                                tab1hover = false;
                                tab2hover = false;
                                tab3hover = false;
                              }
                            });
                          },
                          child: SizedBox(
                            height: 30,
                            width: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${data.tab} 2'),
                                const Spacer(),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  color: Colors.blue,
                                  width: tab2 || tab2hover ? 50 : 0,
                                  height: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              tab3 = true;
                              tab2 = false;
                              tab1 = false;
                            });
                          },
                          onHover: (val) {
                            setState(() {
                              if (val) {
                                tab3hover = true;
                                tab2hover = false;
                                tab1hover = false;
                              } else {
                                tab1hover = false;
                                tab2hover = false;
                                tab3hover = false;
                              }
                            });
                          },
                          child: SizedBox(
                            height: 30,
                            width: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('${data.tab} 3'),
                                const Spacer(),
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  color: Colors.blue,
                                  width: tab3 || tab3hover ? 50 : 0,
                                  height: 2,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
            // Container(
            //   color: Colors.red,
            //   width: 100,
            //   height: 100,
            // ),
            // Container(
            //   color: Colors.green,
            //   width: 100,
            //   height: 100,
            // ),
            // Container(
            //   color: Colors.blue,
            //   width: 100,
            //   height: 100,
            // ),
          ],
        ),
      ),
    );
  }
}
