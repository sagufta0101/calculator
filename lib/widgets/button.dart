import 'package:calculator/utils/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String? label;
  void Function()? ontap;
  IconData? icon;
  // final bool isColored, isEqualSign, canBeFirst;
  Button({
    this.label,
    this.ontap,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.headline6;
    final mediaQuery = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(20.0),
      onTap: ontap,
      child: Center(
          child: Container(
        height: mediaQuery.width * 0.25,
        width: mediaQuery.width * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: yellowColor,
        ),
        child: Center(
          child: Icon(
            icon!, color: backgroundColor,
            size: 50,
            // style: textStyle?.copyWith(),
          ),
        ),
      )),
    );
  }
}
