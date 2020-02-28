import 'package:flutter/material.dart';

class NeomorphicRoundImage extends StatelessWidget {
  final String imageURL;
  final double size;

  NeomorphicRoundImage(this.imageURL, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
              offset: Offset(15, 15), color: Color(0x33000000), blurRadius: 30),
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
        child: ClipOval(
          child: Image.network(
            imageURL,
            width: size - 10,
            height: size - 10,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
