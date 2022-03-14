import 'package:flutter/material.dart';

class AppBarSegment {
  static TextDirection direction = TextDirection.ltr;
  static setDirection(bool ltr) {
    direction = ltr ? TextDirection.ltr : TextDirection.rtl;
  }

  static getLeading(bool ltr, GlobalKey<ScaffoldState> key, bool smallscreen) {
    return smallscreen
        ? GestureDetector(
            onTap: () => key.currentState!.openDrawer(),
            child: ltr
                ? Center(
                    child: Icon(
                    Icons.menu,
                    textDirection: direction,
                  ))
                : Center(
                    child: RotatedBox(
                      quarterTurns: 90,
                      child: Icon(Icons.menu_open, textDirection: direction))))
        : const SizedBox(width: 0, height: 0);
  }

  static getActions(bool ltr, GlobalKey<ScaffoldState> key, bool smallscreen) {
    return [
      smallscreen
          ? Row(
              children: [
                GestureDetector(
                    onTap: () => key.currentState!.openEndDrawer(),
                    child: ltr
                        ? Center(
                            child:
                                Icon(Icons.menu_open, textDirection: direction))
                        : Center(
                            child: Icon(
                            Icons.menu,
                            textDirection: direction,
                          ))),
                const SizedBox(
                  width: 15,
                )
              ],
            )
          : const SizedBox(width: 0, height: 0)
    ];
  }
}
