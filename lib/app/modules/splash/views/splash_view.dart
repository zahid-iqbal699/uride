import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:elevo/utils/app_text_styles.dart';
import 'package:elevo/utils/colors.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top blue shapes
          Positioned(
            top: -100,
            left: -100,
            child: Container(
              width: size.width * 0.8,
              height: size.width * 0.8,
              decoration: BoxDecoration(
                color: AppColors.splashLeftCornerColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(300),
                ),
              ),
            ),
          ),
          Positioned(
            top: -80,
            right: -120,
            child: Container(
              width: size.width * 1.0,
              height: size.width * 0.9,
              decoration: BoxDecoration(
                color: AppColors.splashRightCornerColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(300),
                ),
              ),
            ),
          ),
          // Bottom blue & yellow waves
          Positioned(
            bottom: -60,
            left: -100,
            child: Container(
              width: size.width * 1.5,
              height: size.width * 0.8,
              decoration: const BoxDecoration(
                color: Color(0xFFFFFF00),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(340),
                  topLeft: Radius.circular(320),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -80,
            left: -120,
            child: Container(
              width: size.width * 1.5,
              height: size.width * 0.8,
              decoration: BoxDecoration(
                  color:AppColors.splashLeftCornerColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(300),
                  topLeft: Radius.circular(320),
                ),
              ),
            ),
          ),
          // Main content
          Align(
            alignment: Alignment.center,
            // height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   // const Spacer(flex: 3),
                     Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ELEVO.',
                        style: AppTextStyles.bold.copyWith(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                     Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                            'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: AppTextStyles.normal.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                          height: 1.5,
                        ),
                      ),
                    ),
                    4.verticalSpace,
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // TODO: Navigation
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          elevation: 8,
                          shadowColor: Colors.blueAccent.withOpacity(0.5),
                        ),
                        child: Text(
                          'Get Started',
                          style: AppTextStyles.normal.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ),
                    // const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}