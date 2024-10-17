import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const[
          Text('Notes',style: TextStyle(fontSize: 30)),
        Spacer(),
        CustomThemeIcon(),
        SizedBox(width: 7),
        CustomSearchIcon()
      ],
    );
  }
}

