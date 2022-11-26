import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabnews_flutter/presentation/providers/contents_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    var contentsprovider = context.read<ContentsProvider>();

    return Scaffold(
      body: FutureBuilder(
        future: contentsprovider.getContents(),
        builder: (context, snapshot) {
          print(">>>> ${snapshot.data}");
          if (snapshot.hasData) {
            var contents = snapshot.data;
            return ListView.builder(
              itemCount: contents!.length,
              itemBuilder: (context, index) {
                var content = contents[index];
                return ListTile(
                  title: Text("${contents[index].title}"),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("ERROR: ${snapshot.error}"),);
          }
          return const Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}