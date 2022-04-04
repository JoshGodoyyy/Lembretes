import 'package:flutter/material.dart';
import 'package:lembretes/widgets/listitem.dart';

import '../models/item_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Items> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color(0xffefefef),
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.purple,
                    Colors.blue,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    'Josh Godoy',
                    style: TextStyle(
                      color: Color(0xffefefef),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: const Text('Início'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Ajuda'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffe5e5e5),
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Lembretes',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/new');
            },
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xffe5e5e5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                for (Items item in items) ListItem(item: item),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
