import 'package:axis_mobile/constants/colors.dart';
import 'package:flutter/material.dart';
import 'screens/user_registration_screen.dart'; // ユーザー登録画面のインポート

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Axis App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), 
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => UserRegistrationScreen()),
            );
          },
          child: Text('ユーザー登録へ'),
        ),
      ),
    );
  }
}
