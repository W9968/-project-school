import 'package:flutter/material.dart';
import 'package:frema/cron/app-theme-notifier.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {

  @override
  Widget build(BuildContext context) {

    bool isDarkMode = Provider.of<AppThemeNotifier>(context).isDarkTheme;

    return Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Settings',
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
                    Icon(
                      Icons.dark_mode_rounded,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const Padding(padding: EdgeInsets.only(right: 10.0)),
                    Text('Dark Mode',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.onSurface)),
                  ],
                ),
                Switch(
                    value: isDarkMode,
                    onChanged: (bool value) {
                      setState(() {
                        isDarkMode = value;

                        if (isDarkMode) {
                          Provider.of<AppThemeNotifier>(context, listen: false)
                              .switchThemeDark();
                        } else {
                          Provider.of<AppThemeNotifier>(context, listen: false)
                              .switchThemeLight();
                        }

                      });
                    })
              ],
            )
          ],
        ));
  }
}
