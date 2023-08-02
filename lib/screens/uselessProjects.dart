import "package:flutter/material.dart";
import "package:personal/Widgets/projectInfo.dart";
import "package:url_launcher/url_launcher.dart";

class uselessProjects extends StatefulWidget {
  const uselessProjects({super.key});
  @override
  State<uselessProjects> createState() => _uselessProjectsState();
}

class _uselessProjectsState extends State<uselessProjects>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AnimatedBuilder(
            animation: _animation,
            builder: (BuildContext context, Widget? child) {
              return Opacity(
                opacity: _animation.value,
                child: Transform.translate(
                  offset: Offset(0, -50 * (1 - _animation.value)),
                  child: const Center(
                    child: Text(
                      "Here you will find the useless shit I created!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              );
            },
          ),
          // a separating bar
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          ProjectWidget(Name: "Decentralised Naming Service", Description: "Mints an NFT on the Polygon Testnet", WebsiteURL: Uri.parse("https://decentralised-name-service-1.vercel.app"), GitHubURL: Uri.parse("https://github.com/Schreezer/DecentralisedNameService")),
          SizedBox(height: 7),
          ProjectWidget(Name: "DeQuester", Description: "The name speaks, although its not responsive yet.", WebsiteURL: Uri.parse("https://deso-base.vercel.app"), GitHubURL: Uri.parse("https://github.com/Schreezer/deso_base"), ),
          SizedBox(height: 7),
          ProjectWidget(Name: "RaspberryPi Assistant", Description: "Can't Believe I am adding this here", WebsiteURL: Uri.parse("https://github.com/Schreezer/RasbberryPi_Assistant"), GitHubURL: Uri.parse("https://github.com/Schreezer/RasbberryPi_Assistant")),
          SizedBox(height: 7),
          ProjectWidget(Name: "Wave Portal", Description: "Can't even call this a project", WebsiteURL: Uri.parse(""), GitHubURL: Uri.parse("https://github.com/Schreezer/waveportal-starter-project-schree"),),
          Container(
            height: 200,
          ),
          Center(
            child: const Text(
              "This is all as of now.",
              style: TextStyle(
                color: Colors.grey, // Change the color to grey
                fontSize: 18, // Change the font size to 10
              ),
            ),
          ),
        ],
      ),
    );
  }
}
