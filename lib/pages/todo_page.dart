import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  // greeting message variable
  String greetingMessage = "";

  // greet user method
  void greetUser() {
    String userName = myController.text;
    
    setState(() {
      greetingMessage = "Hello, "+ userName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // greet user message 
              Text(
                greetingMessage
              ),

              // textfield
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Tyep your name.. ",
                ),
              ),

              // button
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(onPressed: greetUser, child: Text("Tap")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
