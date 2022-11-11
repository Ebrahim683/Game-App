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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.7,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/background_image.png'),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 25.sp, color: Colors.white),
                  ),
                  SizedBox(height: 20.h),
                  //email input
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Email',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        prefixIcon: const Icon(Icons.person),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  //password input
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: TextField(
                      obscureText: true,
                      controller: _passController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  //login button
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: SizedBox(
                        width: Get.width,
                        height: 40.h,
                        child: MaterialButton(
                          color: Colors.blue,
                          onPressed: () {},
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SizedBox(
                      width: 140.w,
                      height: 35.h,
                      child: MaterialButton(
                          color: Colors.blue,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/facebook.png',
                                  height: 25.h, width: 25.w),
                              SizedBox(width: 10.w),
                              const Text(
                                'Facebook',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ))),
                ),
                SizedBox(width: 20.w),
                //twitter
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SizedBox(
                      width: 140.w,
                      height: 35.h,
                      child: MaterialButton(
                          color: Colors.lightBlue,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/twitter.png',
                                  height: 30.h, width: 30.w),
                              const Text(
                                'Twitter',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ))),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 10.w),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Sign up',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
