import 'package:flutter/material.dart';
import 'package:frema/screen/login.dart';

class DrawerHaeaderCust extends StatelessWidget {
  const DrawerHaeaderCust({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Account',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSecondaryContainer)),
            const Padding(padding: EdgeInsets.all(8.0)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.network(
                        'https://buzzly.info/upload/1769/5705d4c005efeff0ce92ec1ec57ac130.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(right: 10.0)),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('John Doe',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(context).colorScheme.onSurface)),
                          const Text(
                            '@working',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          )
                        ]),
                  ],
                ),
                FilledButton(
                  style: ButtonStyle(
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0)),
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Theme.of(context).colorScheme.secondaryContainer),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: Row(
                    children: [
                      Text('Sign Out',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer)),
                      const Padding(padding: EdgeInsets.only(right: 10.0)),
                      Icon(Icons.logout_rounded,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                          size: 18)
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
