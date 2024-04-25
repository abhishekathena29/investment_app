import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investment_app/feature/auth/presentation/otp.page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final phoneContrl = TextEditingController();
  final passContrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Text(
                'Enter your phone number',
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 15.h),
              TextField(
                controller: phoneContrl,
                decoration: InputDecoration(
                  hintText: 'Phone number',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 13.h,
                    horizontal: 10.w,
                  ),
                  // border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black.withOpacity(0.1),
                      // width: 1.6,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      // width: 1.6,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              OTPPage(phoneNumber: phoneContrl.text)));
                },
                child: Container(
                  height: 60.h,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    color: const Color(0xffFBD200),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
