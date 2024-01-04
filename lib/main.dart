import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frema/cron/app-theme-notifier.dart';
import 'package:frema/screen/splash.dart';
import 'package:frema/theme/figma.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
      url: 'https://bcpptdbspsxqahhmwjss.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJjcHB0ZGJzcHN4cWFoaG13anNzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDM5NTI0NTksImV4cCI6MjAxOTUyODQ1OX0.Vkwm0PNiuWLt3jySaZYUQ5PkQlfrh09lcvKS9JvYb2w',
      authOptions:
          const FlutterAuthClientOptions(authFlowType: AuthFlowType.pkce),
      realtimeClientOptions:
          const RealtimeClientOptions(logLevel: RealtimeLogLevel.info),
      storageOptions: const StorageClientOptions(retryAttempts: 10));

  runApp(const Frema());
}

final supabase = Supabase.instance.client;

class Frema extends StatelessWidget {
  const Frema({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top],
    );

    return ChangeNotifierProvider(
      create: (context) => AppThemeNotifier(),
      child: Consumer<AppThemeNotifier>(builder: (context, state, child) {
        ThemeMode currentTheme =
            state.isDarkTheme ? ThemeMode.dark : ThemeMode.light;

        return MaterialApp(
          title: 'School Project Management App',
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(),
          theme: MaterialTheme().light(),
          darkTheme: MaterialTheme().dark(),
          themeMode: currentTheme,
        );
      }),
    );
  }
}
