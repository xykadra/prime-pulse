import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:prime_pulse/screens/medical_report_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            SizedBox(
              height: 150,
              child: Image.asset(
                "lib/assets/avatar.png",
                fit: BoxFit.contain,
              ),
            ),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "Ramiz Durić",
                  style: TextStyle(fontSize: 24),
                )),
            const Align(
                alignment: Alignment.center,
                child: Text(
                  "71",
                  style: TextStyle(fontSize: 24, color: Colors.grey),
                )),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 80,
              child: CupertinoButton(
                  borderRadius: BorderRadius.circular(25),
                  padding: EdgeInsets.zero,
                  color: CupertinoColors.white,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        CupertinoIcons.heart,
                        color: Colors.blue,
                        size: 24,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Health Report",
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const MedicalReportScreen()));
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Your Next Appoinment",
              style: CupertinoTheme.of(context)
                  .textTheme
                  .navLargeTitleTextStyle
                  .copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0),
            ),
            SizedBox(
              height: 450,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "lib/assets/nextAppoinment.png",
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
