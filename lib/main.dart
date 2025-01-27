import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Livros Que Amo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const LivrosPage(),
    );
  }
}

class LivrosPage extends StatelessWidget {
  const LivrosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Livros Que Amo 📚'),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              LivroCard(
                titulo: 'Verity',
                autor: 'Colleen Hoover',
                descricao:
                    'Um thriller psicológico que prende do início ao fim, explorando os limites entre amor, obsessão e segredos sombrios.',
              ),
              LivroCard(
                titulo: 'É Assim Que Acaba',
                autor: 'Colleen Hoover',
                descricao:
                    'Um romance emocionante que aborda relações complicadas, escolhas difíceis e a força de seguir em frente.',
              ),
              LivroCard(
                titulo: 'Conectadas',
                autor: 'Clara Alves',
                descricao:
                    'Uma história fofa e envolvente sobre amizade, amor e as conexões que fazemos no mundo virtual.',
              ),
              LivroCard(
                titulo: 'Vermelho, Branco e Sangue Azul',
                autor: 'Casey McQuiston',
                descricao:
                    'Um romance divertido e apaixonante sobre o filho da presidente dos EUA e o príncipe da Inglaterra.',
              ),
              LivroCard(
                titulo: 'Os Sete Maridos de Evelyn Hugo',
                autor: 'Taylor Jenkins Reid',
                descricao:
                    'Um drama fascinante sobre a vida de uma estrela de Hollywood e os segredos que ela decide revelar.',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.indigo,
        padding: const EdgeInsets.all(8.0),
        child: const Text(
          'Desenvolvido por Samara - 2025',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class LivroCard extends StatelessWidget {
  final String titulo;
  final String autor;
  final String descricao;

  const LivroCard({super.key, 
    required this.titulo,
    required this.autor,
    required this.descricao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 5,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Autor(a): $autor',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            Text(
              descricao,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
