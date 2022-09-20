import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool lights = true;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Appbar button pressed");
              },
              icon: const Icon(Icons.phone_iphone)),
          IconButton(
              onPressed: () {
                debugPrint("Appbar button pressed");
              },
              icon: const Icon(Icons.phone_android))
        ],
        title: const Text("Learning Page"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/40.png'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.purple,
              child: const Text(
                "Ener",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: isSwitched ? Colors.yellow : Colors.purple),
                onPressed: () {
                  debugPrint('Bolt pressed');
                },
                child: const Text("Bolt")),
            OutlinedButton(
                onPressed: () {
                  debugPrint('Bolt Outlined pressed');
                },
                child: const Text("Bolt")),
            TextButton(
                onPressed: () {
                  debugPrint('Bolt Button pressed');
                },
                child: const Text("Bolt")),
            GestureDetector(
              onTap: () {
                setState(() {
                  lights = !lights;
                });
              },
              child: Container(
                color: lights ? Colors.yellow : Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.lightbulb_outline),
                    Text("Less power this"),
                    Icon(Icons.lightbulb_outline),
                  ],
                ),
              ),
            ),
            Switch(
                value: isSwitched,
                onChanged: (bool value) {
                  isSwitched = !isSwitched;
                  setState(() {
                    lights = value;
                  });
                }),
            const Divider(
              thickness: 5,
              color: Colors.black,
            ),
            Image.asset('assets/images/01.png'),
          ],
        ),
      ),
    );
  }
}
