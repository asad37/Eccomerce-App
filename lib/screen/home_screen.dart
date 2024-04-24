//import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  // void initState() {
  //   AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
  //     if (isAllowed) {
  //       AwesomeNotifications().requestPermissionToSendNotifications();
  //     }
  //   });
  //   super.initState();
  // }

  // void triggerNotification() {
  //   AwesomeNotifications().createNotification(
  //       content: NotificationContent(id: 7, channelKey: "Basic_channel"));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text("Notification"))
        ],
      ),
    );
  }
}
