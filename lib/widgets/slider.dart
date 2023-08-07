
import 'package:flutter/material.dart';
import 'package:schoolwale/widgets/slider_items.dart';

class CustomSlider extends StatelessWidget {
  final int eventCount;
  final int resultCount;

  const CustomSlider({required this.eventCount, required this.resultCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildSliderItem(
              heading: "Attendance",
              imageUrl: "assets/images/icons/attendance-icon.png",
              infoText: "98%",
              containerColor: Color.fromARGB(255, 255, 228, 226),
            ),
            _buildSliderItem(
              heading: "Events",
              imageUrl: "assets/images/icons/events.png",
              infoText: "$eventCount",
              containerColor: Color.fromARGB(255, 107, 200, 2),
            ),
            _buildSliderItem(
              heading: "Results",
              imageUrl: "assets/images/icons/results.png",
              infoText: "$resultCount", // Show the result count here
              containerColor: Color.fromARGB(255, 255, 212, 245),
            ),
            _buildSliderItem(
              heading: "Notes",
              imageUrl: "assets/images/icons/notes.png",
              infoText: "12",
              containerColor: Color.fromARGB(255, 52, 225, 222),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSliderItem({
    required String heading,
    required String imageUrl,
    required String infoText,
    required Color containerColor,
  }) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SliderItem(
        heading: heading,
        imageUrl: imageUrl,
        infoText: infoText,
        containerColor: containerColor,
      ),
    );
  }
}
