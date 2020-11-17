import 'package:flutter/material.dart';

class Chip extends StatelessWidget {
  final Widget textWidget;
  final Color color;
  final EdgeInsetsGeometry margin;

  const Chip({
    Key key,
    @required this.textWidget,
    this.margin = EdgeInsets.zero,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: textWidget,
      ),
      color: color,
      margin: margin,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
