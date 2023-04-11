
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarItem extends StatelessWidget {
  bool pressed = false;
  String path;
  NavBarItem({required this.pressed, required this.path, Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: pressed ? Color(0xffE8F1F4): Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: SvgPicture.asset(
        path,
        width: 10,
        height: 10,
        color: pressed ? Color(0xff25A5DC) : Colors.grey,
      ),
    );
  }
}