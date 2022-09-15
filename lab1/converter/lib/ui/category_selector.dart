import 'package:flutter/material.dart';
import 'package:flutter_picker/flutter_picker.dart';

class CategorySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        color: Color.fromARGB(255, 0, 38, 90),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.expand_less,
              color: Colors.white,
            ),
            Text(
              "Money",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
