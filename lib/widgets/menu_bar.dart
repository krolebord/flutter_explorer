import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget with PreferredSizeWidget {
  static const double _size = 28;

  @override
  final preferredSize = const Size.fromHeight(_size);

  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _size,
      child: Material(
        type: MaterialType.card,
        elevation: 1,
        child: Row(

        ),
      ),
    );
  }
}
