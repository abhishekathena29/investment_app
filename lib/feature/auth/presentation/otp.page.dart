import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPPage extends StatelessWidget {
  OTPPage({super.key, required this.phoneNumber});

  final String phoneNumber;

  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 31.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 31.h),
              Text(
                "Verification",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "We’ve send you the verification code on $phoneNumber",
                style: TextStyle(
                  // color: const Color(0xff2E2E2D),
                  fontSize: 14.sp,
                  // fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 43.h),
              PinCodeTextField(
                appContext: context,
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(8),
                  fieldHeight: 55,
                  fieldWidth: 55,
                  activeFillColor: Colors.white,
                  activeBorderWidth: 1,
                  selectedBorderWidth: 1,
                  inactiveBorderWidth: 1,
                  selectedColor: Colors.blue,
                  inactiveColor: Colors.black.withOpacity(0.1),
                  activeColor: Colors.blue,
                ),
                animationDuration: const Duration(milliseconds: 300),
                controller: otpController,
                keyboardType: TextInputType.number,
                onChanged: (value) {},
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60.h,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    color: const Color(0xffFBD200),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      'Verify',
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
