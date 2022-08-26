import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  final String iconImgaepact;

  final String buttomText;
  const MyButtom(
      {Key? key, required this.buttomText, required this.iconImgaepact})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          //Icon
          width: 90,
          padding: EdgeInsets.all(20),

          decoration: BoxDecoration(
              //color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 30,
                  spreadRadius: 10,
                )
              ]),
          child: Center(
            child: Image.asset(iconImgaepact),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          buttomText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade800),
        )
      ],
    );
  }
}
