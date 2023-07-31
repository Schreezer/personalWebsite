import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

class socialWraper extends StatefulWidget {
  final Icon icon; 
  final String text;
  final String userName;
  final String S_url;
  const socialWraper(
      {required this.icon, required this.text, required this.S_url, required this.userName, super.key});

  @override
  State<socialWraper> createState() => _socialWraperState();
}

class _socialWraperState extends State<socialWraper> {
  

  @override
  Widget build(BuildContext context) {
    Uri URL = Uri.parse(widget.S_url);
    return InkWell(
      onTap: () async {
        await launchUrl(URL);
      },
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center the children vertically
        crossAxisAlignment:
            CrossAxisAlignment.center, // Center the children horizontally
        children: [
          widget.icon,
          Text(widget.text),
          Text(widget.userName),
        ],
      ),
    );
  }
}
