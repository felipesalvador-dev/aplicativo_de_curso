import 'package:flutter/material.dart';

class CursosTela extends StatelessWidget {
  const CursosTela({super.key});

  @override
  Widget build(BuildContext context) {
    final cursos = const [
      'Flutter Básico',
      'Dart Essencial',
      'Interfaces Mobile',
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: cursos.length,
      itemBuilder: (context, indice) {
        return Card(
          child: ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.play_arrow),
            ),
            title: Text(cursos[indice]),
            subtitle: const Text('Toque para continuar'),
            trailing: const Icon(Icons.chevron_right),
          ),
        );
      },
    );
  }
}