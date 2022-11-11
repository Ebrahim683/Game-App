import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _emailController = TextEditingController();
  final _numberController = TextEditingController();
  final _passController = TextEditingController();
  final _retypePassController = TextEditingController();
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
                    'Sign Up',
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
                  //phone number input
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: TextField(
                      controller: _numberController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Phone Number',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        prefixIcon: const Icon(Icons.phone),
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
                  SizedBox(height: 10.h),
                  //retype password input
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    child: TextField(
                      controller: _retypePassController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Re-Type Password',
                        hintStyle: const TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),
                  //sign up button
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
                            'Sign Up',
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
                    'or connect with',
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
                                  height: 30.h, width: 30.w),
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
          ],
        ),
      ),
    );
  }
}
