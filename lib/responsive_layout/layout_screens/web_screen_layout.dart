import 'package:flutter/material.dart';
import 'package:instagram_clone/common_widgets/auth_widgets.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: SignOutButton(),
            ),
          ],
        ),
        body: const Center(child: Text('This is a web browser')));
  }
}
