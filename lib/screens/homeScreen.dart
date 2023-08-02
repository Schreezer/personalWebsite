import "package:flutter/material.dart";

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 100, bottom: 50),
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                child: const Text(
                  "Welcome to my Website!",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, bottom: 50),
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 1500),
                curve: Curves.easeIn,
                // child: const Expanded(
                  child: Text(
                    "There are a few things you can actually do here instead of just reading and looking at stuff.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.pink,
                    ),
                  ),
                // ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, bottom: 50),
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(milliseconds: 3000),
                curve: Curves.easeIn,
                // child: const Expanded(
                  child: Text(
                    "If you are here to talk business just click the top right button, while you can access the menu from the button on the top left.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.pink,
                    ),
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
