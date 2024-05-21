import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.blue[50],
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.blue[50],
        border: const Border(),
        leading: Text(
          "Medication",
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
        ),
        trailing: SizedBox(
          height: 50,
          width: 50,
          child: Image.asset(
            "lib/assets/pulse.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              "Your Medication Today",
              style: CupertinoTheme.of(context)
                  .textTheme
                  .navLargeTitleTextStyle
                  .copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 350,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "lib/assets/medicationToday2.png",
                fit: BoxFit.contain,
              ),
            ),
            CupertinoButton(
                color: CupertinoColors.systemBlue,
                child: const Text(
                  "Request a Refill",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
