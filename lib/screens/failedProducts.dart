import "package:flutter/material.dart";
import "package:url_launcher/url_launcher.dart";

class failedProductsScreen extends StatefulWidget {
  const failedProductsScreen({super.key});
  @override
  State<failedProductsScreen> createState() => _failedProductsScreenState();
}

class _failedProductsScreenState extends State<failedProductsScreen>
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
                      "Hey there, Welcome to my Wall of Fails! 😂",
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
          InkWell(
            onTap: () async {
              await launchUrl(Uri.parse("https://0xbountier.web.app/"));
            },
            child: Container(
                child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                // circular image
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/Bountier.png"),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        InkWell(
                          child: const Text(
                            "Bountier",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          onTap: () async {
                            await launchUrl(
                                Uri.parse("https://0xbountier.web.app/"));
                          },
                        ), // on clicking this it will route to the website: "0xbountier.web.app"
                        Center(
                          child: const Text(
                              "An approach like Quora, but with Crypto as incentive.",
                              textAlign: TextAlign.center,),
                        ),
                  
                        Center(
                          child: const Text(
                              "Still in development, but I am not sure if its a good idea.",
                              textAlign: TextAlign.center,),
                        ),
                        Center(
                          child: const Text(
                              "Fully centralised as of now.",
                              textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ),
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
