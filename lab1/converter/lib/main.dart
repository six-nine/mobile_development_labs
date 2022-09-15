import 'package:converter/ui/category_selector.dart';
import 'package:converter/ui/convertation_item.dart';
import 'package:converter/ui/keyboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xfff2f4f5),
            title: Text(
              "Converter",
              style: TextStyle(
                  color: Color(0xff333333), fontWeight: FontWeight.w600),
            ),
            elevation: 0,
          ),
          body: Container(
            child: Column(
              children: [
                Expanded(
                  child: ConvertationItem(
                    backgroundColor: Color(0xfffafafa),
                  ),
                ),
                Expanded(
                  child: ConvertationItem(
                    backgroundColor: Color(0xffe9edf2),
                  ),
                ),
                CategorySelector(),
                Keyboard()
              ],
            ),
          ),
        ));
  }
}
