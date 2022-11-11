import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Get.height * 0.6,
            color: Colors.red,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg.png'), fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(fontSize: 15.sp, color: Colors.white),
                ),
                SizedBox(height: 20.h),
                //email input
                TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    prefixIcon: const Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 10.h),
                //password input
                TextField(
                  controller: _passController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    prefixIcon: const Icon(Icons.person),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 70.w,
                  child: const Divider(
                    color: Colors.black,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: const Text(
                  'or create with',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              SizedBox(
                  width: 70.w,
                  child: const Divider(
                    color: Colors.black,
                  )),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //facebook
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
                      child: Row(
                        children: [
                          Image.asset('images/facebook.png'),
                          const Text(
                            'Facebook',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ))),
              SizedBox(width: 20.w),
              //twitter
              Container(
                width: 140.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('images/twitter.png'),
                      const Text(
                        'Twitter',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
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
