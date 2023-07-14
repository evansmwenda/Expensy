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
                            child: Image.asset("assets/images/avatar.jpeg",width: 130,)),
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
                    Text(
                      "General",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SettingsItemTile(
                      icon: Icons.edit_location_rounded,
                      title: "Bank Location",
                      subtitle: "7307, Grant Flashing NY23563",
                    ),
                    const SettingsItemTile(
                      icon: Icons.edit_location_rounded,
                      title: "My Wallet",
                      subtitle: "Manage your saved wallet",
                    ),
                    Text(
                      "General",
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SettingsItemTile(
                      icon: Icons.edit_location_rounded,
                      title: "My Account",
                      subtitle: "test",
                    ),
                    const SettingsItemTile(
                      icon: Icons.edit_location_rounded,
                      title: "Notification",
                      subtitle: "test",
                    ),
                    const SettingsItemTile(
                      icon: Icons.edit_location_rounded,
                      title: "Privacy",
                      subtitle: "test",
                    ),
                    const SettingsItemTile(
                      icon: Icons.edit_location_rounded,
                      title: "About",
                      subtitle: "test",
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
