import 'package:flutter/material.dart';
import 'package:lembretes/widgets/listitem.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color(0xffefefef),
        child: Column(
          children: [
            DrawerHeader(
              //decoration: const BoxDecoration(color: Colors.blue),
              child: Container(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListTile(
                title: const Text('Início'),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListTile(
                title: const Text('Ajuda'),
                onTap: () {},
              ),
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
              children: const [
                ListItem(
                  title: 'Titulo',
                  subtitle:
                      'Sei lá, tanto faz o que tem escrito aqui... Não importa também',
                ),
                ListItem(
                  title: 'Titulo 1',
                  subtitle:
                      'Tanto faz 1, não ligo o que tem escrito aqui, só importa se tiver funcionando',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
