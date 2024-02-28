import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';

class EditPassowrdWidget extends StatefulWidget {
  final TextEditingController controller;

  const EditPassowrdWidget({super.key, required this.controller});

  @override
  State<EditPassowrdWidget> createState() => _EditPassowrdWidgetState();
}

class _EditPassowrdWidgetState extends State<EditPassowrdWidget> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          border: Border.all(color: const Color(0xff8E8870)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 2),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: TextField(
              controller: widget.controller,
              onChanged: (text) {
                // Limiting the text field to 4 lines
              },
              decoration: InputDecoration(
                hintText: "* * * * *",
                hintStyle: const TextStyle(color: blackColor),
                prefixIcon: const Icon(
                  Icons.lock,
                ),
                suffixIconColor: blackColor,
                prefixIconColor: blackColor,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      visible = !visible;
                    });
                  },
                  child: visible == false
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                ),
                border: InputBorder.none,
              ),
              obscureText: visible,
            ),
          ),
        ),
      ),
    );
  }
}
