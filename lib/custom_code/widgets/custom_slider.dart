// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom widget code
class CustomSlider extends StatefulWidget {
  const CustomSlider({
    Key? key,
    this.width,
    this.height,
    this.sliderValue,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? sliderValue;

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: Colors.white,
        inactiveTickMarkColor: Color(0xFF8D8E98),
        thumbColor: Colors.grey,
        overlayColor: Color(0x29EB1555),
      ),
      child: Slider(
        value: widget.sliderValue!,
        min: 0.0,
        max: 100.0,
        onChanged: (double newValue) {},
      ),
    );
  }
}
