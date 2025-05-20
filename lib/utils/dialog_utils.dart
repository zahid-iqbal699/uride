import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'colors.dart';
class DialogUtils {
  static bool isProgressVisible = false;

  ///common method for showing progress dialog
  static void showProgressDialog(
      {isCancellable = false, text = "Loading Please Wait..."}) async {
    if (!isProgressVisible) {
      Get.dialog(Builder(builder: (context) {
        return AlertDialog(
          insetPadding: const EdgeInsets.all(0.0),
          titlePadding: const EdgeInsets.all(0.0),
          contentPadding: const EdgeInsets.all(0.0),
          backgroundColor: Colors.transparent,
          content: Container(
            width: MediaQuery.of(context).size.width - 40 > 400
                ? 500
                : MediaQuery.of(context).size.width - 30,
            height: 180,
            //color: Colors.white,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 12,
                  margin: const EdgeInsets.only(left: 2, right: 2),
                  decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                  width: MediaQuery.of(context).size.width,
                ),
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Lottie.asset(
                        'assets/anim/loading.json',
                        fit: BoxFit.fitHeight,
                        height: 150,
                      ),
                      Text(
                        text,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }), barrierDismissible: isCancellable);
      isProgressVisible = true;
    }
  }


  //new methis

  ///common method for hiding progress dialog
  static void hideProgressDialog() {
    if (isProgressVisible) Get.back();
    isProgressVisible = false;
  }

  // success dialog method
  static void successDialog(description, {Function()? onclick,var title="Success!"}) {
    if (onclick == null) {
      Get.back();
    }
    Get.dialog(Builder(builder: (context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.all(0.0),
        titlePadding: const EdgeInsets.all(0.0),
        contentPadding: const EdgeInsets.all(0.0),
        backgroundColor: Colors.transparent,
        content: Container(
          width: MediaQuery.of(context).size.width - 40 > 400
              ? 500
              : MediaQuery.of(context).size.width - 30,
          height: 280,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 120,
                decoration: const BoxDecoration(
                    color: Color(0xff515c6f),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Lottie.asset(
                      'assets/anim/success.json',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              Text(
                description,
                maxLines: 4,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: AppColors.black,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: MaterialButton(
                    onPressed: onclick,
                    color: Colors.green,
                    height: 45,
                    minWidth: 150,
                    elevation: 6,
                    splashColor: AppColors.secondaryColor,
                    textColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Text(
                      "OK",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }), barrierDismissible: false);
  }

  static void errorDialog(description, {Function()? click}) {
    Get.dialog(Builder(builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(0.0),
        titlePadding: const EdgeInsets.all(0.0),
        contentPadding: const EdgeInsets.all(0.0),
        content: Container(
          width: Get.width - 40 > 400 ? 500 : Get.width - 30,
          height: 280,
          //color: Colors.red,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 120,
                decoration: const BoxDecoration(
                    color: Color(0xff515c6f),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: Get.width,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Lottie.asset(
                      'assets/anim/error.json',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
              ),
              Text(
                'Oops...',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  description??"",
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: AppColors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: MaterialButton(
                    onPressed: click ??
                            () {
                          Navigator.pop(context);
                        },
                    color: Colors.red,
                    height: 45,
                    minWidth: 150,
                    elevation: 6,
                    splashColor: AppColors.secondaryColor,
                    textColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Text(
                      "OK",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }), barrierDismissible: false);
  }

  static void infoDialog(desc) {
    Get.dialog(Builder(builder: (context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.all(0.0),
        titlePadding: const EdgeInsets.all(0.0),
        contentPadding: const EdgeInsets.all(0.0),
        backgroundColor: Colors.transparent,
        content: Container(
          width: MediaQuery.of(context).size.width - 40 > 400
              ? 500
              : MediaQuery.of(context).size.width - 30,
          height: 280,
          //color: Colors.white,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 120,
                decoration: const BoxDecoration(
                    color: Color(0xff515c6f),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Lottie.asset('assets/anim/info.json',
                        width: 150, height: 150, repeat: true),
                  ),
                ),
              ),
              Text(
                'Info!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              Text(
                desc,
                maxLines: 4,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: AppColors.black,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: const Color(0xffF19734),
                    height: 45,
                    minWidth: 150,
                    elevation: 6,
                    splashColor: AppColors.secondaryColor,
                    textColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Text(
                      "OK",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }), barrierDismissible: false);
  }
  static void askPermissionActionDialog(
      String title, String msg, Function() positiveResponse) {
    Get.defaultDialog(
      title: title,
      content: Text(msg),
      actions: [
        TextButton(
          onPressed: () {
            Get.back(); // Close the dialog
          },
          child: const Text("Cancel"),
        ),
        TextButton(
          onPressed: () {
            // Close the dialog
            positiveResponse();
            Get.back();
          },
          child: const Text("Yes Sure"),
        ),
      ],
    );
  }

}
