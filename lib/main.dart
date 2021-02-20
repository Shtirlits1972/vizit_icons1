import 'dart:ui';
import 'package:flutter/material.dart';
import 'Ut.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'vizitka-20-1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseLayout(),
    );
  }
}

class BaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage(
                  Ut.getWallpaper(),
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(450),
                      border: Border.all(
                        color: Colors.yellow,
                        width: 5.0,
                      ),
                      color: Colors.black,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250.0),
                      child: Image.asset(
                        Ut.getAvatar(),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 260,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.yellow,
                      width: 5.0,
                    ),
                    color: Colors.black,
                  ),
                  child: RichText(
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.account_box_rounded,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: "      (063)150-00-88       ",
                            style: GoogleFonts.montserrat(
                                textStyle:
                                    Theme.of(context).textTheme.headline6,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),
                          ),
                        ],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                ),
                Container(
                  width: 260,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.yellow,
                      width: 5.0,
                    ),
                    color: Colors.black,
                  ),
                  child: RichText(
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.mail,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: " info@sourceit.com.ua ",
                          ),
                        ],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        )),
                  ),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}
