import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MedicalReportScreen extends StatelessWidget {
  const MedicalReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.blue[50],
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.blue[50],
        border: const Border(),
        // leading: Text(
        //   "Health Report",
        //   style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
        // ),
        middle: Text(
          "Health Report",
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle.copyWith(fontSize: 28),
        ),
        trailing: Image.asset("lib/assets/pulse.png"),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // const Align(
            //     alignment: Alignment.topLeft,
            //     child: Text(
            //       "Health Report",
            //       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            //     )),
            // const SizedBox(
            //   height: 10,
            // ),
            SizedBox(
              height: 750,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "lib/assets/medicalReport.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
