import 'package:flutter/material.dart';

class NewTodo extends StatefulWidget {
  const NewTodo({Key? key}) : super(key: key);

  @override
  State<NewTodo> createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffe5e5e5),
        foregroundColor: Colors.black,
        title: const Text(
          'Novo lembrete',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffe5e5e5),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.purple, Colors.blue],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.center,
                  child: const Text(
                    'Salvar',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
