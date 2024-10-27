import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget? child;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    required this.child,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10)
        ),
        padding: EdgeInsets.all(25),
      )
    );
  }
}
