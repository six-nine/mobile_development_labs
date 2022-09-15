import 'package:flutter/material.dart';

class ConvertationItem extends StatelessWidget {
  Color backgroundColor;

  ConvertationItem({Key? key, required this.backgroundColor}) : super(key: key);

  List<String> modes = ["USD", "EUR", "RUB"];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              child: DropdownButton<String>(
            value: "USD",
            icon: const Icon(Icons.expand_more),
            elevation: 14,
            style: const TextStyle(color: Color(0xff333333), fontSize: 24),
            onChanged: (String? newValue) {
              print(newValue);
            },
            underline: Container(
              height: 0,
            ),
            items: modes.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          )),
          Container(
            child: Text(
              "0",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
            ),
            // color: Colors.deepOrange,
          )
        ],
      ),
    );
  }
}
