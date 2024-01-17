// Home Screen Widget
import 'package:auto_route/auto_route.dart';
import 'package:fit_daily/util/router/router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Home Screen UI
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                // Navigate to AIChat Screen
                AutoRouter.of(context).push(const AIChatRoute());
              },
              icon: const Icon(Icons.chat),
            ),
          ],
        ),
        // A column widget that contains the widgets for a fitness app home screen
        body: Column(
          children: [
            // A row widget that contains the widgets for the user profile
            SizedBox(height: MediaQuery.of(context).padding.top),
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello John Doe',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
