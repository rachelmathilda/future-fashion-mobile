import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Fashion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Future Fashion',
          ),
        ),
        body: Center(
          child: Column(
            children: [
              MyButton(
                  icon: Icons.list, text: 'Lihat Item', color: Colors.cyan),
              MyButton(
                  icon: Icons.add, text: 'Tambah Item', color: Colors.pink),
              MyButton(
                  icon: Icons.outbond, text: 'Logout', color: Colors.orange),
            ],
          ),
        ));
  }
}

class MyButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  MyButton({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Kamu telah menekan tombol $text')));
        },
        icon: Icon(icon),
        label: Text(text),
        style: ElevatedButton.styleFrom(backgroundColor: color));
  }
}
