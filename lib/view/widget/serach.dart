import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:madetruky/controller/logic/product_controler.dart';

class SerTextFormfiald extends StatelessWidget {
  // final TextEditingController controller;
  final controller = Get.find<Productcontroller>();
  final bool obscureText;
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;

  final keyboardType;
  final Function validator;
  SerTextFormfiald({
    Key? key,
    // required this.controller,
    required this.obscureText,
    required this.keyboardType,
    required this.validator,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GetBuilder<Productcontroller>(
        builder: (
          _,
        ) =>
            TextField(
          controller: controller.searchTextController,
          onChanged: (searchName) {
            controller.addSearchTolist(searchName);
          },
          obscureText: obscureText,
          cursorColor: Colors.black,
          keyboardType: keyboardType,
          // validator: (value) => validator(value),
          decoration: InputDecoration(
            fillColor: Colors.white,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
      ),
    );
  }
}
