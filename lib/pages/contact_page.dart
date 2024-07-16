import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Contact me",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await launchUrl(
                        Uri.parse("https://github.com/MuhammadiMirzo"),
                        mode: LaunchMode.inAppBrowserView,
                      );
                    },
                    child: Image.asset(
                      "images/git.png",
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await launchUrl(
                        Uri.parse("https://www.instagram.com/"),
                        mode: LaunchMode.inAppBrowserView,
                      );
                    },
                    child: Image.asset(
                      "images/instagram.png",
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final url = Uri(scheme: 'tel', path: '939190297');
                      if (await canLaunchUrl(url)) {
                        launchUrl(url);
                      }
                      ;
                    },
                    child: Image.asset(
                      "images/phone-call.png",
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final url = Uri(
                          scheme: 'mailto', path: 'muhammadjonm438@gmail.com');
                      if (await canLaunchUrl(url)) {
                        launchUrl(url);
                      }
                      ;
                    },
                    child: Image.asset(
                      "images/gmail.png",
                      height: 40,
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      final url = Uri(scheme: 'sms', path: '939190297');
                      if (await canLaunchUrl(url)) {
                        launchUrl(url);
                      }
                      ;
                    },
                    child: Image.asset(
                      "images/linkedin.png",
                      height: 40,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
