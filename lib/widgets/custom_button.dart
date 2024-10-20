import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, this.isLoading = false});
  final bool isLoading;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: kPrimaryColor),
        child: Center(
            child: isLoading
                ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : const Text('Add',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
