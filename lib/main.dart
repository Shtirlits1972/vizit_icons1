import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'визитка-2',
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
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          width: 600,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage("assets/image/kapli2.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.yellow,
                      width: 5.0,
                    ),
                    color: Colors.black,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/image/alf1.jpg',
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
    );
  }
}
