import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:literature_app_admin/Core/Components/app_button.dart';
import 'package:literature_app_admin/Core/Components/helper_components.dart';
import 'package:literature_app_admin/Core/Components/text_widget.dart';
import 'package:literature_app_admin/Core/Components/textfield_container.dart';
import 'package:literature_app_admin/Core/constant/assets.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:literature_app_admin/Core/constant/colors.dart';
import 'package:literature_app_admin/utils/routes/routes_name.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _inputValue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                logo,
                width: 218.w,
                height: 135.h,
              ),
              VerticalSizedBox(vertical: 40.h),
              CustomText(
                text: "Please enter your login information",
                fontSize: 20.sp,
                color: blackColor,
                fontWeight: FontWeight.w400,
              ),
              VerticalSizedBox(vertical: 40.h),
              TextFieldContainer(
                title: "E-mail",
                placeholder: "johndoe@gmail.com",
                textController: emailController,
                obscure: false,
                validator: (value) {
                  if (RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(value.toString()) ==
                      false) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              VerticalSizedBox(vertical: 10.h),
              TextFieldContainer(
                title: "Password",
                validator: (value) {
                  if (value == null || value.trim().length < 8) {
                    return 'Password must contain 8 characters';
                  }

                  return null;
                },
                placeholder: "Create Password",
                textController: passController,
                suffixicon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: greyColor,
                ),
                obscure: true,
                prefixIcon: Icons.lock,
              ),
              VerticalSizedBox(vertical: 30.h),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.mainscreen);
                },
                child: const CustomGradientButton(buttonText: "Log In"),
              ),
              VerticalSizedBox(vertical: 180.h),
            ],
          ),
        ),
      ),
    ));
  }
}
