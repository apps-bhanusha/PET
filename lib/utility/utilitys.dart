import 'dart:io';

import 'package:intl/intl.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:path_provider/path_provider.dart';


class Utility {
  // static Future<bool> checkStoragePermission() async {
  //   var status = await Permission.storage.status;
  //   if (status.isDenied) {
  //     var status = await Permission.storage.request();
  //     return status.isGranted;
  //   } else if (status.isPermanentlyDenied) {
  //     openAppSettings();
  //     return false;
  //   }
  //   return true;
  // }
  //
  // static Future<bool> checkCameraPermission() async {
  //   var status = await Permission.camera.status;
  //   if (status.isDenied) {
  //     var status = await Permission.camera.request();
  //     return status.isGranted;
  //   } else if (status.isPermanentlyDenied) {
  //     openAppSettings();
  //     return false;
  //   }
  //   return true;
  // }

  static showToast({required String msg}) {
    msg.isEmpty
        ? ""
        : Fluttertoast.showToast(
        msg: msg, textColor: Colors.white, backgroundColor: Colors.red, gravity: ToastGravity.BOTTOM);
  }

  // static Future<String> findLocalPath() async {
  //   final directory = Platform.isAndroid ? await getTemporaryDirectory() : await getApplicationDocumentsDirectory();
  //   return directory.path;
  // }

  // static String getFormatDate(DateTime dateTime) {
  //   String date = DateFormat('yyyy-MM-dd').format(dateTime).toString();
  //   debugPrint("date--> $date");
  //   return date;
  // }
  //
  static String getFormatDate1(DateTime dateTime) {
    String date = DateFormat('dd MMM yyyy').format(dateTime).toString();
    debugPrint("date--> $date");
    return date;
  }

  // static showSingleAlert(BuildContext context, String msg,
  //     {String? title, Function? onCancel, Function? onOk, String? cancelText, String? okText}) {
  //   showCupertinoDialog(
  //       context: context,
  //       builder: (context) {
  //         return CupertinoAlertDialog(
  //           title: Text(title ?? "my_profit  "  ),
  //           content: Text("$msg"),
  //           actions: [
  //             TextButton(
  //                 onPressed: () {
  //                   if (onCancel != null) {
  //                     onCancel();
  //                     Navigator.pop(context);
  //                   } else {
  //                     Navigator.pop(context);
  //                   }
  //                 },
  //                 child: Text(cancelText ?? "cancel  "  )),
  //             TextButton(
  //                 onPressed: () {
  //                   if (onOk != null) {
  //                     onOk();
  //                     Navigator.pop(context);
  //                   } else {
  //                     Navigator.pop(context);
  //                   }
  //                 },
  //                 child: Text(okText ?? "ok  "  )),
  //           ],
  //         );
  //       });
  // }
}
