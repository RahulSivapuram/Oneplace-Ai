import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'data.dart';

class Detail extends StatefulWidget {
  final Aiinfo aiinfo;

  const Detail({super.key, required this.aiinfo});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  /*Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Cannot launch url";
    }
  }*/

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(widget.aiinfo.link);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 150,
                        ),
                        Text(
                          widget.aiinfo.name,
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 56,
                              color: Colors.black,
                              fontWeight: FontWeight.w800),
                          textAlign: TextAlign.left,
                        ),
                        const Text(
                          "AI powered sites",
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 31,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.left,
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        Text(
                          widget.aiinfo.description,
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w300),
                        ),
                        Divider(
                          color: Colors.black,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // _launchURL(widget.aiinfo.link);
                            launchUrl(url);
                          },
                          child: Text(
                            "Go to website!!",
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: -64,
              child: Hero(
                tag: widget.aiinfo.position,
                child: Image.asset(
                  widget.aiinfo.iconimage,
                  height: 150,
                  width: 300,
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 32,
              child: Text(
                widget.aiinfo.position.toString(),
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 247,
                  color: Colors.black.withOpacity(0.08),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            )
          ],
        ),
      ),
    );
  }
}
