import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            ImageSection(
              image: 'assets/gramados.jpg',
            ),
            TitleSection(
              name: 'Gramados',
              location: 'Rio  Grande do Sul, Brasil',
            ),
            ButtonSection(),
            TextSection(
              description:
                  'Gramado é uma cidade com uma estância de montanha situada no estado mais a sul do Brasil, Rio Grande do Sul. Influenciada pelos colonos alemães do século XIX, a cidade possui um toque bávaro com chalés alpinos, chocolateiros e lojas de artesanato. Gramado é também conhecida pelas suas exibições de luzes de Natal e pelas hortênsias em flor na primavera. O Lago Negro disponibiliza alugueres de barcos e caminhadas na floresta, enquanto as montanhas da Serra Gaúcha possuem trilhos de caminhada e de alpinismo',
              textAlign: TextAlign.justify,
            ),
          ],
        )),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          const Icon(
            Icons.star,
            color: Color.fromARGB(255, 25, 78, 192),
          ),
          const Icon(
            Icons.star,
            color: Color.fromARGB(255, 25, 78, 192),
          ),
          const Icon(
            Icons.star,
            color: Color.fromARGB(255, 25, 78, 192),
          ),
          const Text('3.500'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
   
    final Color color = Theme.of(context).primaryColor;
    return const SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: Color.fromARGB(255, 25, 78, 192),
            icon: Icons.facebook_sharp,
            label: 'Facebook',
          ),
          ButtonWithText(
            color: Color.fromARGB(255, 25, 78, 192),
            icon: Icons.map_rounded,
            label: 'Endereço',
          ),
          ButtonWithText(
            color: Color.fromARGB(255, 25, 78, 192),
            icon: Icons.share,
            label: 'Compartilhar',
          ),
        ],
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
    this.textAlign = TextAlign.left,
  });

  final String description;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
        textAlign: textAlign,
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
