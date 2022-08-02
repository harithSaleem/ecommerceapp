import 'package:flutter/material.dart';

class MyBotton extends StatelessWidget {
  final String title;
  final Function() onprees;
  const MyBotton({
    Key? key,
    required this.title,
    required this.onprees,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onprees,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.red,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Almarai',
                ),
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.red,
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
