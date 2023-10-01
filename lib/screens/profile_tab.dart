import 'package:expensy/utils/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/settings_item_tile.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back_ios_sharp,color: fontSubHeading,),
        actions: const [
          Padding(padding: EdgeInsets.only(right: defaultSpacing),child: Icon(Icons.settings,),),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: Column(
                    children: [
                      Flexible(
                        child: ClipRRect(
                            borderRadius: const BorderRadius.all(Radius.circular(defaultRadius)),
                            child: Image.asset("assets/images/notification.png",width: 130,)),
                      ),
                      Text("Jacob Timeberline",style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700,color: fontHeading,),),
                      Text("jacobtimber@gmail.com",style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: fontSubHeading,),),
                      Chip(label: Text("Edit Profile"),backgroundColor: primaryLight),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: defaultSpacing),
                      child: Text(
                        "General",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    // const SizedBox(height: defaultSpacing,),
                    const SettingsItemTile(
                      assetUrl: "assets/icons/location-outline.svg",
                      title: "Bank Location",
                      subtitle: "7307, Grant Avenue, Flashing NY23563",
                    ),
                    const SettingsItemTile(
                      assetUrl: "assets/icons/wallet.svg",
                      title: "My Wallet",
                      subtitle: "Manage your saved wallet",
                    ),
                    const SizedBox(height: defaultSpacing,),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultSpacing),
                      child: Text(
                        "Account",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const AccountsItemTile(
                      assetUrl: "assets/icons/user.svg",
                      title: "My Account",
                      // subtitle: "test",
                    ),
                    const AccountsItemTile(
                      assetUrl: "assets/icons/notifications-outline.svg",
                      title: "Notification",
                    ),
                    const AccountsItemTile(
                      assetUrl: "assets/icons/lock-closed-outline.svg",
                      title: "Privacy",
                    ),
                    const AccountsItemTile(
                      assetUrl: "assets/icons/info-circle.svg",
                      title: "About",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
