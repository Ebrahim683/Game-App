import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/pages/auth/login_page.dart';
import 'package:untitled/pages/auth/sign_up_page.dart';

class BaseAuthPage extends StatefulWidget {
  const BaseAuthPage({super.key});

  @override
  State<BaseAuthPage> createState() => _BaseAuthPageState();
}

class _BaseAuthPageState extends State<BaseAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('images/facebook.png'),
          SizedBox(height: 15.h),
          Text(
            'Hello!',
            style: TextStyle(color: Colors.black, fontSize: 20.sp),
          ),
          SizedBox(height: 10.h),
          const Text(
            'Welcome to Sales TOP. A Platform To',
            style: TextStyle(color: Colors.teal),
          ),
          SizedBox(height: 5.h),
          const Text(
            'Message Read Estate Needs',
            style: TextStyle(color: Colors.teal),
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //login
              Container(
                  width: 140.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border(
                      top: BorderSide(
                        color: Colors.black,
                        width: 1.w,
                      ),
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 1.w,
                      ),
                      left: BorderSide(
                        color: Colors.black,
                        width: 1.w,
                      ),
                      right: BorderSide(
                        color: Colors.black,
                        width: 1.w,
                      ),
                    ),
                  ),
                  child: MaterialButton(
                      onPressed: () {
                        Get.off(() => const LoginPage());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ))),
              SizedBox(width: 20.w),
              //Sign up
              Container(
                width: 140.w,
                height: 40.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 1.w,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1.w,
                    ),
                    left: BorderSide(
                      color: Colors.black,
                      width: 1.w,
                    ),
                    right: BorderSide(
                      color: Colors.black,
                      width: 1.w,
                    ),
                  ),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Get.off(() => const SignUpPage());
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
