import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("設定")
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Settings'
                  ),
                  ElevatedButton(
                      child: const Text("詳細画面へ遷移する"),
                      onPressed: () {
                        // 詳細画面へ遷移する
//                        context.go('/detail/2');
                        context.push('/detail/2');
                      }
                  )
                ]
            )
        )
    );
  }
}