import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.blue[50],
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.blue[50],
        border: const Border(),
        leading: Text(
          "PrimePulse",
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
        ),
        trailing: Image.asset("lib/assets/pulse.png"),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Add Your Medical Report",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 40,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "Scan a Document",
                  style: TextStyle(fontSize: 24),
                )),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "lib/assets/takeAPhoto.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "Upload from Phone",
                  style: TextStyle(fontSize: 24),
                )),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "lib/assets/uploudImage.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
