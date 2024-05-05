import 'package:flutter/material.dart';

class WatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20), // Add space at the top
            Text(
              'Info',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Add space between "Info" and descriptive text
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'For an exceptional range of high quality leather jackets, sheepskin coats, leather luggage, leather goods, look no further than Leather Company. With a commitment to sourcing only the best, highest quality leathers, we pride ourselves on the quality and craftsmanship seen throughout our ranges of mens and womens leather clothing and accessories.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

