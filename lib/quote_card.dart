import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text),
            const SizedBox(
              height: 10.0,
            ),
            Text(quote.author),
            const SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
              onPressed: delete(),
              icon: const Icon(Icons.delete),
              label: const Text('delete'),
            ),
          ],
        ),
      ),
    );
  }
}
