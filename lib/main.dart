import 'package:flutter/material.dart';
import 'package:bubble_lens/bubble_lens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bubble Lens',style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Container(
					color: Colors.black,
					child: BubbleLens(
						width: MediaQuery.of(context).size.width,
						height: MediaQuery.of(context).size.height,
						widgets: [
							for (var i = 0; i < 100; i++)
              Container(
                width: 100,
                height: 100,
                color: [Colors.red, Colors.green, Colors.blue][i % 3],
              )
						]
					),
				)
      ),
    );
  }
}
