import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget {
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => _PalindromeState();
}

class _PalindromeState extends State<Palindrome> {
  final controller = TextEditingController();
  String name = " ";
  List<String> checkedName = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Palindrome Checker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Enter a string",
                contentPadding: EdgeInsets.all(8.0),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    name = controller.text;
                    checkedName.clear();
                   
                      for (int i = 0; i < name.length; i++) {
                        checkedName.add(name[i]);
                      }
                    
                    if (name == checkedName.reversed.join()) {
                      name = "It's a Palindrome";
                    } else {
                      name = "It's not a Palindrome";
                    }
                  });
                },
                child: const Text("Check")),
            Text(name)
          ],
        ),
      ),
    );
  }
}