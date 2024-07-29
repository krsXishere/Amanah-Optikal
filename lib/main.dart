import 'package:amanah_optikal/pages/landing_page.dart';
import 'package:amanah_optikal/providers/landing_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const AmanahOptikal());
}

class AmanahOptikal extends StatefulWidget {
  const AmanahOptikal({super.key});

  @override
  State<AmanahOptikal> createState() => _AmanahOptikalState();
}

class _AmanahOptikalState extends State<AmanahOptikal> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LandingProvider(),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          theme: ThemeData.light(
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: const LandingPage(),
        );
      }),
    );
  }
}
