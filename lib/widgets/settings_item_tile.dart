import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';

class SettingsItemTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String assetUrl;
  const SettingsItemTile(
      {super.key, required this.title, required this.assetUrl, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(left: 2),
        child: SvgPicture.asset(assetUrl,height:20,width:20,color: fontSubHeading),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: fontHeading,
          fontSize: fontSizeTitle,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: subtitle == null ? Container() : Text(
        subtitle!,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: fontSubHeading,
          fontSize: fontSizeBody,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 12,color: fontSubHeading,),
    );
  }
}


class AccountsItemTile extends StatelessWidget {
  final String title;
  final String assetUrl;
  const AccountsItemTile(
      {super.key, required this.title, required this.assetUrl,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: ListTile(
        dense: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 2),
          child: SvgPicture.asset(assetUrl,height:18,width:18,color: fontSubHeading),
        ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: fontHeading,
            fontSize: fontSizeTitle,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded,size: 12,color: fontSubHeading,),
      ),
    );
  }
}