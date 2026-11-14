
import 'package:flutter/material.dart';

class ActionBarWidget extends StatelessWidget {
  const ActionBarWidget({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  Widget actionButton(
      BuildContext context,
      IconData icon,
      String label,
      ) {
    return Expanded(
      child: TextButton(
        onPressed: () => showMessage(
          context,
          '$label selected',
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.teal, size: 26),
            const SizedBox(height: 4),
            Text(label),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          actionButton(context, Icons.call, 'CALL'),
          actionButton(context, Icons.map, 'ROUTE'),
          actionButton(context, Icons.share, 'SHARE'),
        ],
      ),
    );
  }
}
