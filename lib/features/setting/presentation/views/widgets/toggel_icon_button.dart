import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ToggelIconButton extends StatefulWidget {
  const ToggelIconButton({super.key});

  @override
  State<ToggelIconButton> createState() => _ToggelIconButtonState();
}

class _ToggelIconButtonState extends State<ToggelIconButton> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: isToggled
          ? const Icon(
              FontAwesomeIcons.toggleOn,
            )
          : const Icon(
              FontAwesomeIcons.toggleOff,
            ),
      color: isToggled ? Colors.blue : Colors.grey,
      iconSize: 28,

      tooltip: isToggled ? 'Toggle on' : 'Toggle off',
      onPressed: () {
        setState(() {
          isToggled = !isToggled;
        });
      },
    );
  }
}
