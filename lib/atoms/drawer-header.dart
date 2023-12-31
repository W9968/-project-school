import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                style: GoogleFonts.inter(
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
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color:
                                      Theme.of(context).colorScheme.onSurface)),
                          Text(
                            '@working',
                            style: GoogleFonts.inter(
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
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text('Sign Out',
                          style: GoogleFonts.inter(
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
