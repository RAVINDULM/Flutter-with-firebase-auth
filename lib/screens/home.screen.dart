import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              const HomeBody(),
            ]),
          ),
        ));
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Welcome back!")),
    );
  }
}
