import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final inputController = TextEditingController();


  Future<void> _incrementCounter() async {

    await showDialog(
     context: context,
     builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          children: [
            TextField(
              controller: inputController,
              // onSubmitted: (_) => _createNotification(inputController.text.trim()),
            ),
            TextButton(
              onPressed: () {print("выберите время");},
              child: Text("Время уведомления")
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop,
             child: Text("Отмена")
          ),
          ElevatedButton(
            onPressed: _createNotification(inputController.text.trim()),
           child: child)
        ],
      );
    });
  }

  Future<void> _createNotification(String text) async {

  }

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Напоминания"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            TextButton(
              onPressed: _incrementCounter,
               child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blueGrey,
                    width: 5
                  )
                ),
                padding: EdgeInsets.all(5),
                child: Text("Создать напоминание"),
               ))
          ],
        ),
      ),
    );
  }
}