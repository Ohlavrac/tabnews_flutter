import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabnews_flutter/presentation/providers/contents_provider.dart';

import 'presentation/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContentsProvider()),
      ],
      child: MaterialApp(
        initialRoute: "/home",
        routes: {
          "/home": (context) => const Home(),
        },
        title: "TabNews Flutter",
      ),
    );
  }
}