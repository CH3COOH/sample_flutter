import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key, required this.pid}) : super(key: key);

  final String pid;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("detail")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "id ${widget.pid}"
            )
          ]
        )
      )
    );
  }
}