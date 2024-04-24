import 'package:firebase_messaging/firebase_messaging.dart';

class FirbaseMsg {
  Future<void> onBackgroundMessage(RemoteMessage message) async {
    print('Title:${message.notification?.title}');
    print('Body:${message.notification?.body}');
    print('Payload:${message.data}');
  }

// c6koTMbgRRma-k-adDg1R0:APA91bE6yH_hwUQCVdriZo5-4L8QLulG83JN3rh66qiGDhY3QU-TkcXzrZjDyBMLiP4UKcDwJg9Gftu08lG6tDJpweKPIFN-oKclCV7FWUmiHjpLCSA1lP3qFAxBGRieKGtjGCtaPWnh
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();

    final fcToken = await _firebaseMessaging.getToken();

    print('Token:$fcToken');

    FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);
  }
}
