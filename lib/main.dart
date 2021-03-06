import 'package:flutter/material.dart';
import 'package:fluttersanctum/providers/auth.dart';
import 'package:fluttersanctum/widgets/nav-drawer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Auth(),
      child: MyApp()
      )
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Sanctum authentication'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: NavDrawer(),
      body: Center(
        child: Consumer<Auth>(
          builder: (context, auth, child) {
           if (auth.authenticated) {
             return Text('You are logged in');
           } else {
             return Text('You are not logged in');
           }
          },
        )
      ),
     );
  }
}
