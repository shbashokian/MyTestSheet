import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerComponent extends StatelessWidget {
  const DividerComponent({
    super.key,
    required this.sizeW,
  });

  final double sizeW;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey,
      thickness: 1.5,
      endIndent: sizeW / 6,
      indent: sizeW / 6,
    );
  }
}
