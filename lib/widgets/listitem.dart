import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xfffefefe),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '23:00 - 28/03/2022',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Subtitulo ou descrição... sla tanto faz',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 6,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                ),
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blue],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
