import 'package:flutter/material.dart';

class Categoriecontinaer extends StatelessWidget {
  Color color;
  String title;
  String image;
  Function() ontap;
  Categoriecontinaer({
    Key? key,
    required this.color,
    required this.title,
    required this.image,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: 55,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.network(
                image,
                height: 40,
                width: 40,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 3, right: 3, bottom: 2),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Almarai',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
