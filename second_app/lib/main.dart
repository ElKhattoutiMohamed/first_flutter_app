import 'package:flutter/material.dart';
import 'package:second_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second app"),
      ),
      body: HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("floating action button pressed");
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Profile",
          )
        ],
        onDestinationSelected: (int indexSelected) {
          setState(() {
            currentPage = indexSelected;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
