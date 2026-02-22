import 'dart:io';

import 'package:flutter/foundation.dart';

class AppUrl {
  // static String socketUrl = "wss://";

  static const String _liveBaseUrl = "http://";

  static late String baseUrl;

  static Future<void> init() async {
    if (kDebugMode) {
      final localIp = await _getLocalIp();
      if (localIp != null) {
        baseUrl = 'http://$localIp:8000/api';
      } else {
        print('⚠️ Local IP not found, using live URL');
        baseUrl = _liveBaseUrl;
      }
    } else {
      baseUrl = _liveBaseUrl;
    }
  }

  static Future<String?> _getLocalIp() async {
    try {
      final interfaces = await NetworkInterface.list();

      for (var interface in interfaces) {
        if (interface.name == 'en0') {
          for (var addr in interface.addresses) {
            if (addr.type == InternetAddressType.IPv4) {
              return addr.address;
            }
          }
        }
      }
    } catch (e) {
      debugPrint('❌ Error getting IP: $e');
    }

    return null;
  }

  static var loginInEmail = '$baseUrl/auth/signInEmail';
  static var signInEmail = '$baseUrl/auth/signInEmail';

  static var forgotPassword = '$baseUrl/auth/forgot-password';
  static var verifyPasswordOtp = '$baseUrl/auth/verify-otp-reset-password';
  static var resetPassword = '$baseUrl/auth/reset-password';
  static var notifications = "$baseUrl/profile/notifications";
}
