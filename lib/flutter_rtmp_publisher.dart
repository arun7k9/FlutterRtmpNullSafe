import 'package:flutter/services.dart';

class RTMPPublisher {
  static const MethodChannel _channel = const MethodChannel('rtmp_publisher');

  static streamVideo(String url) {
    final Map<String, dynamic> params = <String, dynamic>{'url': url};

    _channel.invokeMethod('stream', params);
  }
}
