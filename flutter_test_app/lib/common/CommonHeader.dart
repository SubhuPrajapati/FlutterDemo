import 'dart:io';

import 'package:device_info/device_info.dart';

class CommonHeader {
  static Map<String, String> returnCommenHeader() {
    var deviceType = "";
    var deviceFullName = "";
    var deviceModel = "";
    var deviceManufacture = "";
    var osVersion = "";
    var androidVersion;
    if (Platform.isIOS) {
      deviceType = "ios";
       var iosInfo = DeviceInfoPlugin().iosInfo;

    var iosModel = iosInfo.then((value) => {
          deviceModel = value.model,
          osVersion = value.systemName + value.systemVersion,
          deviceModel = value.name + value.model
        });
    } else if (Platform.isAndroid) {
      deviceType = "android";
    var androidInfo = DeviceInfoPlugin().androidInfo;
    var modelName = androidInfo.then((value) => {
          deviceModel = value.model,
          deviceManufacture = value.manufacturer,
          androidVersion = value.version,
        });
    }

    deviceFullName = "" + deviceManufacture + " " + deviceModel;
    var map = {
      "device_type": deviceType,
      "mobile_model": deviceFullName,
      "app": "advantage",
      "mobile_os_version": osVersion,
    };

    return map;
  }
}