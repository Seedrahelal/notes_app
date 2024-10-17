import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(.1)),
      child: const Center(child: Icon(Icons.search, size: 28)),
    );
  }
}

class CustomThemeIcon extends StatelessWidget {
  const CustomThemeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(.1)),
      child: const Center(child: Icon(Icons.dark_mode_outlined, size: 28)),
    );
  }
}
