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
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            // Scrollable ListView displaying history
            child: Consumer<CalculatorProvider>(
              builder: (context, provider, child) {
                return ListView.builder(
                  itemCount: provider.history.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        provider.history[index],
                        style: const TextStyle(
                          fontSize: 24,  // Increased text size
                          fontWeight: FontWeight.bold,  // Bold to make it stand out
                          color: Colors.white,  // Ensuring the text contrasts well
                        ),
                      ),
                      tileColor: Colors.grey[800],  // Gray background color for the list tile
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    );
                  },
                );
              },
            ),
          ),
          // Go Back button at the bottom
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.SecondaryColor,  
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              ),
              onPressed: () {
               
                Navigator.pop(context);
              },
              child: Text(
                'Go Back',
                style: TextStyle(
                  fontSize: 20,  
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
