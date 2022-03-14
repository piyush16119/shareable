import 'dart:math';

import 'package:flutter/material.dart';
import 'package:oneweb/api_for_dart.dart';
import 'package:oneweb/data.dart';

class DrawerSection extends StatefulWidget {
  final bool ltr, menu;
  const DrawerSection({Key? key, required this.ltr, required this.menu})
      : super(key: key);

  @override
  State<DrawerSection> createState() => _DrawerSectionState();
}

class _DrawerSectionState extends State<DrawerSection> {
  bool tab1hover = false, tab2hover = false, tab3hover = false;
  bool tab1 = true, tab2 = false, tab3 = false;

  @override
  Widget build(BuildContext context) {
    Data data = Information.textData;
    var size=MediaQuery.of(context).size;
    return widget.menu
        ? Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: 150,
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  textDirection:
                      widget.ltr ? TextDirection.ltr : TextDirection.rtl,
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
                            widget.ltr ? TextDirection.ltr : TextDirection.rtl),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  textDirection:
                      widget.ltr ? TextDirection.ltr : TextDirection.rtl,
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
                            widget.ltr ? TextDirection.ltr : TextDirection.rtl),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  textDirection:
                      widget.ltr ? TextDirection.ltr : TextDirection.rtl,
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
                            widget.ltr ? TextDirection.ltr : TextDirection.rtl),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  textDirection:
                      widget.ltr ? TextDirection.ltr : TextDirection.rtl,
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
                            widget.ltr ? TextDirection.ltr : TextDirection.rtl),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  textDirection:
                      widget.ltr ? TextDirection.ltr : TextDirection.rtl,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    RotatedBox(
                        quarterTurns: widget.ltr ? 0 : 90,
                        child: const Icon(
                          Icons.logout,
                          color: Colors.red,
                        )),
                    const SizedBox(width: 5),
                    Text(data.logout,
                        textDirection:
                            widget.ltr ? TextDirection.ltr : TextDirection.rtl),
                  ],
                ),
              ],
            ),
          )
        : Container(
            color: Colors.white,
            width: min(300, size.width),
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
            width: min(300, size.width),
                  child: Wrap(
                    textDirection:
                        widget.ltr ? TextDirection.ltr : TextDirection.rtl,
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
                      InkWell(
                        onTap: ()=>Navigator.pop(context),
                        child: const Icon(Icons.close),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
