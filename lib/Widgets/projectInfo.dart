import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class ProjectWidget extends StatefulWidget {
  final String Name;
  final String Description;
  final Uri WebsiteURL;
  final Uri GitHubURL;
  const ProjectWidget({super.key, required this.Name, required this.Description, required this.WebsiteURL, required this.GitHubURL });

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Expanded(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the children vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center the children horizontally
            children: [
              InkWell(
                onTap: () async {
                  await launchUrl(widget.WebsiteURL);
                },
                child:Text(widget.Name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
              ),
              
              Center(child: Text(widget.Description)),
              
            ],
        
          ),
        ),
         Icon(EvaIcons.github),
         SizedBox(width: 20,)
        
      
      ],
    );
  }
}