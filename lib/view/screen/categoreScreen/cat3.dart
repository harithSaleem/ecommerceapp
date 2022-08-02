import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categoriethree extends StatelessWidget {
  const Categoriethree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        leading: Padding(
          padding: const EdgeInsets.all(2.0),
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
        title: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'ملابس نسائيه ',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                    fontFamily: 'Almarai',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              bulidText(title: 'الكل '),
              const Divider(
                color: Colors.grey,
              ),
              bulidText(title: 'ثياب النوم والراحه '),
              const Divider(
                color: Colors.grey,
              ),
              bulidText(title: 'جواريب وملابس داخليه   '),
              const Divider(
                color: Colors.grey,
              ),
              bulidText(title: 'فساتين  '),
              const Divider(
                color: Colors.grey,
              ),
              bulidText(title: 'احذيه  '),
              const Divider(
                color: Colors.grey,
              ),
              bulidText(title: 'قبعات  '),
              const Divider(
                color: Colors.grey,
              ),
              bulidText(title: 'حجابات   '),
              const Divider(
                color: Colors.grey,
              ),
              bulidText(title: 'بلوزات وقمصان  '),
              const Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget bulidText({
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        left: 5,
        top: 3,
        bottom: 3,
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 18,
          fontWeight: FontWeight.w600,
          fontFamily: 'Almarai',
        ),
      ),
    );
  }
}
