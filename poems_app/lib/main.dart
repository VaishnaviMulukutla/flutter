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
      home: PoemsListScreen(),
    );
  }
}

class PoemsListScreen extends StatelessWidget {
  const PoemsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4E7D3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello Vaishnavi,",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text("Here are today's poems for you"),
              const SizedBox(height: 20),

              Expanded(
                child: ListView(
                  children: [
                    poemCard(
                      context,
                      "My wildflowers in your closet\nYour departure in my front pocket\nAnd our poems in a stranger's diary",
                      "Sakshi Pandey",
                    ),
                    poemCard(
                      context,
                      "You are so brave and quiet\nI forget you are suffering.",
                      "Ernest Hemingway",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget poemCard(BuildContext context, String poem, String author) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PoemDetailScreen(poem: poem, author: author),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(poem, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text(
              "- $author",
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}

class PoemDetailScreen extends StatelessWidget {
  final String poem;
  final String author;

  const PoemDetailScreen({super.key, required this.poem, required this.author});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4E7D3),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 20),
              Text(poem, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 20),
              Text(
                "- $author",
                style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
