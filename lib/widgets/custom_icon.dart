import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(.1)),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, size: 28)),
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
