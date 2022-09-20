import 'package:flutter/material.dart';

int items = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: ListView.builder(
          itemCount: items,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Data ${(++index)}'),
              leading: Icon(Icons.abc),
              trailing: Icon(Icons.telegram),
            );
          }),
    );
  }
}
