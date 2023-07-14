import 'package:flutter/material.dart';

import '../utils/constants.dart';

class SettingsItemTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  const SettingsItemTile(
      {super.key, required this.title, required this.icon, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultSpacing / 3, horizontal: defaultSpacing),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset.zero,
              spreadRadius: 4,
            )
          ],
          color: background,
          borderRadius: BorderRadius.all(Radius.circular(defaultRadius))),
      child: ListTile(dense: true,
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: fontHeading,
                fontSize: fontSizeTitle,
                fontWeight: FontWeight.w600,
              ),
        ),
        subtitle: Text(
          subtitle!,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: fontSubHeading,
            fontSize: fontSizeBody,
          ),
        ),
        leading: Container(
          padding: const EdgeInsets.all(defaultSpacing / 2),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(defaultRadius / 2),
            ),
          ),
          child: Icon(icon),
        ),
        trailing: Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
