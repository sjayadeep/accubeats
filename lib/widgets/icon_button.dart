import 'package:flutter/material.dart';

class NeomorphicIconButton extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color bgColor;
  final Color iconColor;

  NeomorphicIconButton(this.icon, this.size, this.bgColor, this.iconColor);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                offset: Offset(15, 15),
                color: Color(0x33000000),
                blurRadius: 30),
            BoxShadow(
                offset: Offset(-10, -10),
                // color: Color(0xffEEFAFF),
                color: Color(0x88ffffff),
                blurRadius: 15)
          ],
        ),
        child: CircleAvatar(
          backgroundColor: Color(0xffE9F1FF),
          radius: size,
          child: CircleAvatar(
            backgroundColor: bgColor,
            radius: size * .45,
            child: ClipOval(
              child: Icon(
                icon,
                size: size * .50,
                color: iconColor,
              ),
            ),
          ),
        ));
  }
}
