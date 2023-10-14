import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
   MainDrawer({super.key});



  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(

            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.rocket_launch,
                  size: 38,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 14),
                Text(
                  'Study Abroad!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_balance,
              size: 18,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Visa Center',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.money,
              size: 18,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            title: Text(
              'Scholarship Center',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: 16,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}