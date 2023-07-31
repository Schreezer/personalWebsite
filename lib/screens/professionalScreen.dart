import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';
import 'package:personal/Widgets/socialWrapper.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
class professionalScreen extends StatefulWidget {
  const professionalScreen({super.key});

  @override
  State<professionalScreen> createState() => _professionalScreenState();
}

class _professionalScreenState extends State<professionalScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/Imagee.heic"),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "Chirag Aggarwal",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Software and Electrical Engineer",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "Crypto Investor and Trader",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        TabBar(
          controller: _tabController,
          tabs: [
            const Tab(
              icon: Icon(Icons.extension), // an icon representing skills
              text: "Skills",
            ),
            const Tab(
              icon: Icon(Icons.school),
              text: "Education",
            ),
            const Tab(
              icon: Icon(Icons.star),
              text: "Achievements",
            ),
            const Tab(
              icon: Icon(Icons.people), // an icon representing socail networks
              text: "Social",
            )
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              // Display information based on the selected tab
              // Add your code here
              ListView(
                children: [
                  const ListTile(
                    leading: Icon(Icons.extension),
                    title: Text("Programming Languages"),
                    subtitle: Text(
                        "C, C++, Python, Java, Dart, JavaScript, HTML, CSS, Solidity, Rust, MATLAB"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.extension),
                    title: Text("Frameworks"),
                    subtitle: Text("Flutter, React, Express.js, Node.js"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.extension),
                    title: Text("Databases"),
                    subtitle: Text("Firebase"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.extension),
                    title: Text("Tools"),
                    subtitle: Text(
                        "Git, GitHub, VS Code, Hardhat, Ganache, Ethereum Virtual Machine"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.extension),
                    title: Text("Operating Systems"),
                    subtitle: Text("Windows, Linux, MacOS"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.extension),
                    title: Text("Others"),
                    subtitle:
                        Text("Arduino, Raspberry Pi, Figma, Microsoft Office"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.extension),
                    title: Text("Finance"),
                    subtitle: Text(
                        "Basics of Micro and Macro Economics, Muliple Crypto-currencies Analysis, TradingView, Tokenomics"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.extension),
                    title: Text("Electrical Engineering"),
                    subtitle: Text(
                        "Basic Electronics, Digital and Analog Circuits, Control Engineering"),
                  ),
                ],
              ),
              ListView(
                children: [
                  const ListTile(
                    leading: Icon(Icons.school),
                    title:
                        Text("B.Tech. in Electrical Engineering, (2021-2025)"),
                    subtitle: Text("Indian Institute of Technology, Ropar"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.school),
                    title: Text("Class XII"),
                    subtitle: Text("Spring Dale Senior School, Khanna"),
                  ),
                  const ListTile(
                    leading: Icon(Icons.school),
                    title: Text("Class X"),
                    subtitle: Text(
                        "Om Parkash Bansal Modern School, Mandi Gobindgarh"),
                  ),
                ],
              ),
              // Achievements
              ListView(children: [
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text("JEE Advanced 2021"),
                  subtitle: Text("All India Rank 3365"),
                ),
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text("JEE Mains 2021"),
                  subtitle: Text("All India Rank 3675"),
                ),
                // Rank 700 ICPC Prelims,Amrithapuri and Mathura Region
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text("ICPC Prelims, Amrithapuri and Mathura Region"),
                  subtitle: Text("Rank 700"),
                ),
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text("Debates and Declamations"),
                  subtitle: Text("Won a few at School Level"),
                ),
              ]),

              // Social
              GridView.count(
                crossAxisCount: 3, // Number of columns in the grid
                children: const [
                  socialWraper(icon: Icon(EvaIcons.github), text: "Github", S_url: "http://www.github.com/Schreezer", userName: "Schreezer"),
                  socialWraper(icon: Icon(EvaIcons.twitter), text: "Twitter", S_url: "https://twitter.com/Chirag_1313", userName: "Chirag_1313"),
                  socialWraper(icon: Icon(EvaIcons.linkedin), text: "LinkedIn", S_url: "https://www.linkedin.com/in/chirag-aggarwal-80212212b/", userName: "Chirag Aggarwal"),
                  // socialWraper(icon: Icon(EvaIcons.github), text: "Github", S_url: "http://www.github.com", userName: "Schreezer"),
                  // socialWraper(icon: Icon(EvaIcons.github), text: "Github", S_url: "http://www.github.com", userName: "Schreezer"),
                  // socialWraper(icon: Icon(EvaIcons.github), text: "Github", S_url: "http://www.github.com", userName: "Schreezer"),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
