import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  static const double keysMargin = 5.0;
  static const double childAspectRatio = 1.8;
  static const double keyboardPadding = 15.0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double keyWidth = (width - 2 * keyboardPadding - 2 * keysMargin) / 3;
    double keyHeight = keyWidth / childAspectRatio;
    double keyboardHeight =
        2 * keyboardPadding + 3 * keysMargin + 4 * keyHeight;

    return Container(
      padding: const EdgeInsets.all(keyboardPadding),
      height: keyboardHeight,
      decoration: const BoxDecoration(color: Color(0xfff1f3f4)),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: keysMargin,
        mainAxisSpacing: keysMargin,
        childAspectRatio: childAspectRatio,
        children: getNumbersButtons(),
      ),
    );
  }
}

List<Widget> getNumbersButtons() {
  const textStyle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xff333333));

  var result = List.generate(9, (index) {
    return KeyboardButton(
      content: Text(
        (index + 1).toString(),
        style: textStyle,
      ),
    );
  });

  result.add(KeyboardButton(content: Text(".", style: textStyle)));
  result.add(KeyboardButton(content: Text("0", style: textStyle)));
  result.add(KeyboardButton(
      content: Icon(
    Icons.backspace_outlined,
    color: Color(0xff333333),
  )));

  return result;
}

class KeyboardButton extends StatelessWidget {
  Widget content;

  KeyboardButton({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xfff9fbfa)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)))),
      onPressed: () => null,
      child: content,
    );
  }
}
