import 'package:flutter/services.dart';

enum PayMode { test, production }

class EasebuzzFlutter {
  final MethodChannel _channel = const MethodChannel('easebuzz');

  Future<dynamic> openPaymentGateway({required PayMode payMode, required String accessKey}) async {
    Object parameters = {"access_key": accessKey, "pay_mode": payMode};
    try {
      final paymentResponse = await _channel.invokeMethod("payWithEasebuzz", parameters);
      return paymentResponse;
    } catch (e) {}
  }
}
