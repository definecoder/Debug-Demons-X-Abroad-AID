import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
   MainDrawer({super.key});



  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  Image.asset("assets/images/ABROAD AID.png",
                  height: 110,
                  ),
                  const SizedBox(width: 8),
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
                size: 22,
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
                size: 22,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              title: Text(
                'Scholarship Info',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.airline_seat_individual_suite,
                size: 22,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              title: Text(
                'Accommodation Info',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.cases_outlined,
                size: 22,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              title: Text(
                'Part Time Job',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.check_box_outlined,
                size: 22,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              title: Text(
                'Checklist',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.airplane_ticket_outlined,
                size: 22,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              title: Text(
                'Ticket Pricing',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 16,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.list_alt,
                size: 22,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              title: Text(
                'Cost Prediction',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 16,

                ),
              ),
              // shape: RoundedRectangleBorder(
              //   side: BorderSide(color: Colors.black, width: 1),
              //   borderRadius: BorderRadius.circular(5),
              // ),
              onTap: () {},
            ),
            Spacer(),
            Row(
              children: [
                SizedBox(width: 15,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // radius of 20
                    ),
                    elevation: 5, // elevation of 5
                  ),
                  onPressed: () {

                  },
                  child: Text('Become Expert'),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextButton(onPressed: (){}, child: Text("Log in", style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.underline
                  ),)),
                )
              ],
            ),

            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}