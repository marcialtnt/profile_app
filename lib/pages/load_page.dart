import 'package:flutter/material.dart';
import 'package:profile_app/pages/profile_page.dart';

class LoadPage extends StatefulWidget {
  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ProfilePage(),
              ),
            );
            if (result != null) {
              setState(() {});
            }
          },
          child: Text('Cargar profile with future'),
          style: TextButton.styleFrom(
            backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white),
        ),
      ),
    );
  }
}
