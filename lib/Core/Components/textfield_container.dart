import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';

typedef FormValidator = String? Function(String?);

// ignore: must_be_immutable
class TextFieldContainer extends StatefulWidget {
  final String title;
  final String placeholder;
  final Widget? suffixicon;
  bool obscure = false;
  final TextEditingController textController;
  final IconData? prefixIcon;
  final FormValidator? validator;

  TextFieldContainer({
    super.key,
    required this.title,
    required this.placeholder,
    required this.textController,
    this.suffixicon,
    this.prefixIcon,
    required this.obscure,
    required this.validator,
  });

  @override
  State<TextFieldContainer> createState() => _TextFieldContainerState();
}

class _TextFieldContainerState extends State<TextFieldContainer> {
  bool visible = false;

  void toggleObscure() {
    setState(() {
      visible = !visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        // height: 80.h,
        width: 520.w,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
            VerticalSizedBox(vertical: 5.h),
            SizedBox(
              width: 520.w,
              child: TextFormField(
                validator: widget.validator,
                style: TextStyle(
                  color: baseColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                ),
                controller: widget.textController,
                obscureText: visible,
                decoration: InputDecoration(
                  fillColor: whiteColor,
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(
                      color: Color(0xff5C73DB),
                    ), // Change the border color based on focus
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: greyColor),
                  ),
                  hintText: widget.placeholder,
                  suffixIcon: widget.obscure == true
                      ? GestureDetector(
                          onTap: () {
                            toggleObscure();
                          },
                          child: visible == false
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                        )
                      : const SizedBox(),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
