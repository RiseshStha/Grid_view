import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  final String buttonText;
  const GridViewScreen({super.key});
  

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  Color buttonColor = Colors.amber;
  int clickCount = 0;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return isVisible
        ? Container(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
              ),
              onPressed: () {
                setState(() {
                  clickCount++;
                  if (clickCount == 3) {
                    isVisible = false;
                  }
                  // Toggle button color on button press
                  if (clickCount % 2 == 1) {
                    buttonColor = Colors.green;
                  } else {
                    buttonColor = Colors.amber;
                  }
                });
              },
              child: Text(widget.buttonText),
            ),
          )
        : SizedBox(); // Return an empty SizedBox if button is not visible
  }
}

class TogglingButton extends StatefulWidget {
  final String buttonText;

  const TogglingButton({super.key, required this.buttonText});

  @override
  _TogglingButtonState createState() => _TogglingButtonState();
}

class _TogglingButtonState extends State<TogglingButton> {
  Color buttonColor = Colors.amber;
  bool isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isButtonClicked ? Colors.green : Colors.amber,
        ),
        onPressed: () {
          setState(() {
            // Toggle button color on button press
            if (isButtonClicked) {
              buttonColor = Colors.amber;
            } else {
              buttonColor = Colors.green;
            }
            // Toggle the state of the button
            isButtonClicked = !isButtonClicked;
          });
        },
        child: Text(widget.buttonText),
      ),
    );
  }
}
