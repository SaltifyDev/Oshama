import 'package:flutter/material.dart';

void main() {
  runApp(const OshamaApp());
}

class OshamaApp extends StatelessWidget {
  const OshamaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        textTheme: ThemeData(useMaterial3: true).textTheme.apply(
          fontFamilyFallback: const [
            // Windows UI Font
            'Microsoft YaHei UI',
            'Microsoft YaHei',
            // macOS UI Font
            'PingFang SC',
            // Linux UI Font (Noto Sans)
            'Noto Sans CJK SC',
            'Noto Sans CJK TC',
          ],
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var sidebarExtended = false;
  var selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SafeArea(
            child: NavigationRail(
              extended: sidebarExtended,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.menu),
                  label: Text(''),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.message),
                  label: Text('消息'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('设置'),
                ),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  if (value == 0) {
                    sidebarExtended = !sidebarExtended;
                    return;
                  }
                  selectedIndex = value;
                });
              },
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
