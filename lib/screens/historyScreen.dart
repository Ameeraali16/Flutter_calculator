import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator/constants/colors.dart'; // Assuming this is where secondary3Color is defined

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        backgroundColor: Colors.black, // Optional: Matches the calculator theme
        actions: [
          IconButton(
            icon: const Icon(Icons.clear_all), // Icon for clearing history
            onPressed: () {
              // Clear the history when pressed
              Provider.of<CalculatorProvider>(context, listen: false).clearHistory();
              // Optional: Show a Snackbar or Toast message for feedback
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('History cleared')),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            // Scrollable ListView displaying history
            child: Consumer<CalculatorProvider>(
              builder: (context, provider, child) {
                return Scrollbar( // Add a Scrollbar
                  thumbVisibility: true, // Always show the scrollbar
                  thickness: 8.0, // Width of the scrollbar
                  radius: const Radius.circular(10), // Rounded edges
                  child: ListView.builder(
                    itemCount: provider.history.length,
                    itemBuilder: (context, index) {
                      return Padding( // Add padding around each ListTile
                        padding: const EdgeInsets.symmetric(vertical: 8.0), // Space between tiles
                        child: ListTile(
                          title: Text(
                            provider.history[index],
                            style: const TextStyle(
                              fontSize: 28,  // Increased text size
                              fontWeight: FontWeight.bold,  // Bold to make it stand out
                              color: Colors.white,  // Ensuring the text contrasts well
                            ),
                          ),
                          tileColor: Colors.grey[800],  // Gray background color for the list tile
                          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
