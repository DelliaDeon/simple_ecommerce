import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;

  const MyListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: Theme.of(context).colorScheme.secondary,
      ),

      title: Text(text, style: TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),),

      onTap: onTap,

    );
  }
}
